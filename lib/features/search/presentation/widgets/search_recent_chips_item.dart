import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class SearchRecentChipsItem extends StatelessWidget {
  const SearchRecentChipsItem({
    super.key,
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8.r),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyBorder),

            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(
            label,
            style: AppStyles.textSemiBold12.copyWith(color: AppColors.dark),
          ),
        ),
      ),
    );
  }
}
