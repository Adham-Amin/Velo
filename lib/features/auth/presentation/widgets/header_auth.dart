import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class HeaderAuth extends StatelessWidget {
  const HeaderAuth({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.iconsIcLogo),
        SizedBox(height: 24.h),
        Text(title, style: AppStyles.textSemiBold24),
        SizedBox(height: 8.h),
        Text(
          subtitle,
          style: AppStyles.textRegular16.copyWith(color: AppColors.dark),
        ),
      ],
    );
  }
}
