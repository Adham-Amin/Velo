import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class WhatYouLearnSection extends StatelessWidget {
  const WhatYouLearnSection({super.key});

  @override
  Widget build(BuildContext context) {
    const items = [
      'Master Figma auto-layout and component',
      'Build complete design system from scratch',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text("What you'll learn", style: AppStyles.textSemiBold18),
        ),
        SizedBox(height: 12.h),
        ...items.map(
          (item) => Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 12.h),
            child: Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: AppColors.primary,
                  size: 16.sp,
                ),
                SizedBox(width: 12.w),
                Text(item, style: AppStyles.textRegular14),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
