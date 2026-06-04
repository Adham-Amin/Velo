import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class LabelAndSee extends StatelessWidget {
  const LabelAndSee({super.key, required this.title, this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppStyles.textSemiBold18),
        Spacer(),
        if (onTap != null)
          InkWell(
            onTap: onTap,
            child: Text(
              'See All',
              style: AppStyles.textSemiBold14.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
      ],
    );
  }
}
