import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class HeaderInstructorlessonsTab extends StatelessWidget {
  const HeaderInstructorlessonsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('7 Lessons', style: AppStyles.textSemiBold18),
        OutlinedButton.icon(
          onPressed: () => context.push(AppRoutes.instructorAddLesson),
          icon: const Icon(Icons.add, size: 16, color: AppColors.primary),
          label: Text(
            'Add Lesson',
            style: AppStyles.textSemiBold12.copyWith(color: AppColors.primary),
          ),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: AppColors.primary),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
        ),
      ],
    );
  }
}
