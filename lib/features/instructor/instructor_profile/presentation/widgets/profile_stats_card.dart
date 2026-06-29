import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/instructor/instructor_profile/presentation/widgets/profile_stat_item.dart';

class ProfileStatsCard extends StatelessWidget {
  const ProfileStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.background),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          ProfileStatItem(label: 'Courses', value: 4.toString()),
          _Divider(),
          ProfileStatItem(label: 'Students', value: 799.toString()),
          _Divider(),
          ProfileStatItem(label: 'Rating', value: 4.8.toString()),
          _Divider(),
          ProfileStatItem(label: 'Earned', value: '\$24.5k'),
        ],
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 1, height: 36, color: AppColors.background);
  }
}
