import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velo/core/functions/navigate_to_tab.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';

class EmptyCourses extends StatelessWidget {
  const EmptyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.svgsNoCourse),
          SizedBox(height: 24.h),
          Text('No courses yet', style: AppStyles.textSemiBold24),
          SizedBox(height: 8.h),
          Text(
            'You have not enrolled in any course yet',
            style: AppStyles.textRegular16.copyWith(
              color: AppColors.greyBorder,
            ),
          ),
          SizedBox(height: 24.h),
          CustomButton(
            title: 'Explore Courses',
            onTap: () => navigateToTab(context, 0),
          ),
        ],
      ),
    );
  }
}
