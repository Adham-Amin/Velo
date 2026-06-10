import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class CourseMetaRow extends StatelessWidget {
  const CourseMetaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: AppColors.yellow, size: 16.sp),
        SizedBox(width: 4.w),
        Text('4.8', style: AppStyles.textRegular14),
        SizedBox(width: 4.w),
        Text(
          '(20)',
          style: AppStyles.textRegular12.copyWith(color: AppColors.dark),
        ),
        SizedBox(width: 12.w),
        Icon(Icons.person, color: AppColors.dark, size: 16.sp),
        SizedBox(width: 4.w),
        Text(
          '12.5k Students',
          style: AppStyles.textRegular12.copyWith(color: AppColors.dark),
        ),
        SizedBox(width: 12.w),
        Icon(Icons.access_time, color: AppColors.dark, size: 16.sp),
        SizedBox(width: 4.w),
        Text(
          '6h Total Time',
          style: AppStyles.textRegular12.copyWith(color: AppColors.dark),
        ),
      ],
    );
  }
}
