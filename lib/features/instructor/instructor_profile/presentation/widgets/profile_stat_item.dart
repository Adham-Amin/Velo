import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class ProfileStatItem extends StatelessWidget {
  const ProfileStatItem({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: AppStyles.textBold20.copyWith(color: AppColors.primary),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: AppStyles.textRegular14.copyWith(
              color: AppColors.greyBorder,
            ),
          ),
        ],
      ),
    );
  }
}
