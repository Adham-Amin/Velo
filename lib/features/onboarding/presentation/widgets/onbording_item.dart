import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/onboarding/data/modelss/onboarding_model.dart';

class OnbordingItem extends StatelessWidget {
  const OnbordingItem({super.key, required this.item});

  final OnboardingModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(item.image, height: 326.w),
        SizedBox(height: 32.h),
        Text(item.title, style: AppStyles.textSemiBold24),
        SizedBox(height: 16.h),
        Text(
          item.description,
          style: AppStyles.textRegular16,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
