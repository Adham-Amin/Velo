import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class CourseProgressCard extends StatelessWidget {
  const CourseProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        AppRoutes.courseDetails,
        extra: 'Advanced UI Design: Figma Mastery',
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.white,
          border: Border.all(color: AppColors.background),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                AppAssets.imagesUserPhoto,
                height: 80.w,
                width: 80.w,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Advanced UI Design: Figma Mastery',
                    style: AppStyles.textSemiBold14,
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          color: AppColors.primary,
                          backgroundColor: AppColors.greyBorder,
                          value: 0.5,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text('50%', style: AppStyles.textRegular12),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            CircleAvatar(
              radius: 22.w,
              backgroundColor: AppColors.primary,
              child: SvgPicture.asset(AppAssets.svgsPlay),
            ),
          ],
        ),
      ),
    );
  }
}
