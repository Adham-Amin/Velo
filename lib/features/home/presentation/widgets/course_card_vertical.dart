import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class CourseCardVertical extends StatelessWidget {
  const CourseCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        AppRoutes.courseDetails,
        extra: 'Python for Machine Learning',
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.white,
          border: Border.all(color: AppColors.background),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
              child: Image.asset(
                AppAssets.imagesCourse,
                fit: BoxFit.cover,
                height: 150.h,
                width: 300.w,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Python for Machine Learning',
                    style: AppStyles.textSemiBold14,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Ahmed Academy',
                    style: AppStyles.textRegular12.copyWith(
                      color: AppColors.dark,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: AppColors.yellow, size: 16.sp),
                      SizedBox(width: 4.w),
                      Text('4.8', style: AppStyles.textRegular14),
                      SizedBox(width: 4.w),
                      Text(
                        '(20)',
                        style: AppStyles.textRegular12.copyWith(
                          color: AppColors.dark,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(r'$14.99', style: AppStyles.textSemiBold20),
                      SizedBox(width: 8.w),
                      Text(
                        r'$99.99',
                        style: AppStyles.textRegular14.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: AppColors.dark,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
