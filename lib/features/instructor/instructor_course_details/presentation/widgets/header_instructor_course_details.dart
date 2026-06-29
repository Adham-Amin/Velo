import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class HeaderInstructorCourseDetails extends StatelessWidget {
  const HeaderInstructorCourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 90.h,
          width: 90.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.imagesCourceTwo),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Advanced UI/UX Design Masterclass',
                style: AppStyles.textSemiBold16,
              ),
              SizedBox(height: 6.h),
              Row(
                children: [
                  Icon(
                    Icons.people_outline,
                    size: 16,
                    color: AppColors.greyBorder,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '342',
                    style: AppStyles.textRegular12.copyWith(
                      color: AppColors.greyBorder,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Icon(Icons.star, size: 16, color: AppColors.yellow),
                  SizedBox(width: 3),
                  Text(
                    '4.9',
                    style: AppStyles.textRegular12.copyWith(
                      color: AppColors.greyBorder,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                '\$49.99',
                style: AppStyles.textSemiBold16.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
