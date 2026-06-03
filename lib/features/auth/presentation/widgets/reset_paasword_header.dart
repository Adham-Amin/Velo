import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class ResetPaaswordHeader extends StatelessWidget {
  const ResetPaaswordHeader({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12.h),
        SvgPicture.asset(image),
        SizedBox(height: 32.h),
        Text(title, style: AppStyles.textSemiBold24),
        SizedBox(height: 16.h),
        Text(
          subtitle,
          style: AppStyles.textRegular16.copyWith(color: AppColors.dark),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
