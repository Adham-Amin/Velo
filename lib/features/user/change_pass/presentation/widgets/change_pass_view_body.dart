import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/functions/validators.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/core/widgets/custom_text_form_field_password.dart';

class ChangePassViewBody extends StatefulWidget {
  const ChangePassViewBody({super.key});

  @override
  State<ChangePassViewBody> createState() => _ChangePassViewBodyState();
}

class _ChangePassViewBodyState extends State<ChangePassViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late TextEditingController passwordController;
  late TextEditingController newPasswordController;
  late TextEditingController confirmPasswordController;

  bool get isValid =>
      passwordController.text.isNotEmpty &&
      newPasswordController.text.isNotEmpty &&
      confirmPasswordController.text.isNotEmpty;

  @override
  void initState() {
    passwordController = TextEditingController();
    newPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    passwordController.addListener(() => setState(() {}));
    newPasswordController.addListener(() => setState(() {}));
    confirmPasswordController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
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
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.h),
                    Text('Current  Password', style: AppStyles.textRegular12),
                    SizedBox(height: 4.h),
                    CustomTextFormFieldPassword(
                      hintText: 'Enter Current Password',
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.h),
                    Text('New Password', style: AppStyles.textRegular12),
                    SizedBox(height: 4.h),
                    CustomTextFormFieldPassword(
                      hintText: 'Enter New Password',
                      controller: newPasswordController,
                      validator: Validators.password,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Confirm New Password',
                      style: AppStyles.textRegular12,
                    ),
                    SizedBox(height: 4.h),
                    CustomTextFormFieldPassword(
                      hintText: 'Confirm New Password',
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (value != newPasswordController.text) {
                          return 'Password does not match';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Password must contain :',
                      style: AppStyles.textRegular14.copyWith(
                        color: AppColors.greyBorder,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '• At least 8 characters \n• At least one uppercase letter\n• At least one lowercase letter\n• At least one number\n• At least one special character',
                      style: AppStyles.textRegular12.copyWith(
                        color: AppColors.greyBorder,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
              title: 'Update Password',
              onTap: isValid
                  ? () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    }
                  : null,
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}
