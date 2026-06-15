import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/functions/validators.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';
import 'package:velo/features/edit_profile/presentation/widgets/profile_image_picker.dart';

class EditProfileViewBody extends StatefulWidget {
  const EditProfileViewBody({super.key});

  @override
  State<EditProfileViewBody> createState() => _EditProfileViewBodyState();
}

class _EditProfileViewBodyState extends State<EditProfileViewBody> {
  File? file;
  late TextEditingController nameController, emailController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    nameController = TextEditingController(text: 'John Doe');
    emailController = TextEditingController(text: 'JohnDoe@gmail.com');
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Form(
        key: _formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.h),
            Align(
              alignment: Alignment.center,
              child: ProfileImagePicker(
                file: file,
                onPick: (file) => setState(() => this.file = file),
              ),
            ),
            SizedBox(height: 24.h),
            Text('Name', style: AppStyles.textRegular12),
            SizedBox(height: 4.h),
            CustomTextFormField(
              hintText: 'Enter Your Name',
              controller: nameController,
              validator: Validators.name,
            ),
            SizedBox(height: 16.h),
            Text('Email', style: AppStyles.textRegular12),
            SizedBox(height: 4.h),
            CustomTextFormField(
              hintText: 'Enter Your Email',
              controller: emailController,
              validator: Validators.email,
            ),
            Expanded(child: SizedBox(height: 32.h)),
            CustomButton(
              title: 'Save Changes',
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                } else {
                  setState(() => autovalidateMode = AutovalidateMode.always);
                }
              },
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}
