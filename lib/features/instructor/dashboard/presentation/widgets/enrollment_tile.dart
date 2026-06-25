import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class EnrollmentTile extends StatelessWidget {
  const EnrollmentTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=12'),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Adham Amin', style: AppStyles.textSemiBold16),
              const SizedBox(height: 4),
              Text(
                'UI/UX Designer',
                style: AppStyles.textRegular12.copyWith(
                  color: AppColors.greyBorder,
                ),
              ),
            ],
          ),
        ),
        Text(
          'Joined 3 days ago',
          style: AppStyles.textRegular12.copyWith(color: AppColors.greyBorder),
        ),
      ],
    );
  }
}
