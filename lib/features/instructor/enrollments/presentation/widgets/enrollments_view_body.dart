import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';
import 'package:velo/features/instructor/enrollments/presentation/widgets/enrollment_list.dart';

class EnrollmentsViewBody extends StatelessWidget {
  const EnrollmentsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          CustomTextFormField(
            hintText: 'Search your enrollments',
            prefixIcon: Icon(Icons.search),
          ),
          SizedBox(height: 24.h),
          EnrollmentList(),
        ],
      ),
    );
  }
}
