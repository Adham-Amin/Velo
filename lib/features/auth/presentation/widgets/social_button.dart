import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velo/core/utils/app_colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.background,
        border: Border.all(color: AppColors.greyBorder),
      ),
      child: SvgPicture.asset(image),
    );
  }
}
