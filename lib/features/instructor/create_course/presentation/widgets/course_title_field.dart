import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/functions/validators.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';

class CourseTitleField extends StatelessWidget {
  final TextEditingController controller;

  const CourseTitleField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Course Title', style: AppStyles.textSemiBold14),
        const SizedBox(height: 4),
        CustomTextFormField(
          controller: controller,
          validator: Validators.name,
          hintText: 'Enter Your Course Title',
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
