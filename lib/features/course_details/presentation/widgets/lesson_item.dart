import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({super.key, this.isEnabled = false});

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.greyBorder),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28.w,
            backgroundColor: AppColors.primary.withValues(alpha: .3),
            child: Text('1', style: AppStyles.textMedium20),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Why Using Figma', style: AppStyles.textSemiBold14),
                SizedBox(height: 4.h),
                Text(
                  '5 min',
                  style: AppStyles.textSemiBold14.copyWith(
                    color: AppColors.greyBorder,
                  ),
                ),
              ],
            ),
          ),
          isEnabled
              ? CircleAvatar(
                  radius: 22.w,
                  backgroundColor: AppColors.primary,
                  child: SvgPicture.asset(AppAssets.svgsPlay),
                )
              : Icon(Icons.lock, color: AppColors.greyBorder, size: 24.sp),
        ],
      ),
    );
  }
}
