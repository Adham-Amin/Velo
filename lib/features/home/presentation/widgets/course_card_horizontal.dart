import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class CourseCardHorizontal extends StatelessWidget {
  const CourseCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        AppRoutes.courseDetails,
        extra: 'Advanced UI Design: Figma Mastery',
      ),
      child: Container(
        height: 100.h,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: AppColors.white,
          border: Border.all(color: AppColors.greyBorder),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                AppAssets.imagesCourceTwo,
                height: 80.w,
                width: 80.w,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Figma Advanced for UI/UX Design',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: AppStyles.textSemiBold14,
                  ),
                  Text('DesignCamp', style: AppStyles.textRegular12),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: AppColors.yellow, size: 16.sp),
                      SizedBox(width: 4.w),
                      Text('4.1', style: AppStyles.textRegular14),
                      SizedBox(width: 4.w),
                      Text(
                        '(56)',
                        style: AppStyles.textRegular12.copyWith(
                          color: AppColors.dark,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: AppColors.primary,
                    size: 24.sp,
                  ),
                ),
                Text(r'$29.99', style: AppStyles.textSemiBold14),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
