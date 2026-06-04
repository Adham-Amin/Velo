import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class LearningPathCard extends StatelessWidget {
  const LearningPathCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 320.w,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        image: DecorationImage(
          image: AssetImage(AppAssets.imagesCardLearning),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            AppColors.black.withValues(alpha: .5),
            BlendMode.darken,
          ),
        ),
      ),
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.white.withValues(alpha: .25),
            ),
            child: Text(
              'CAREER TRACK',
              style: AppStyles.textSemiBold12.copyWith(color: AppColors.white),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Full-Stack Cloud Engineer',
            style: AppStyles.textSemiBold20.copyWith(color: AppColors.white),
          ),
          SizedBox(height: 8.h),
          Text(
            '12 Courses • 140 Hours',
            style: AppStyles.textRegular14.copyWith(
              color: AppColors.white.withValues(alpha: .75),
            ),
          ),
        ],
      ),
    );
  }
}
