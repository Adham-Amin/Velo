import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class InstructorRow extends StatelessWidget {
  const InstructorRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRoutes.instructor),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.w,
            backgroundImage: AssetImage(AppAssets.imagesUserImage),
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Instructor',
                style: AppStyles.textRegular14.copyWith(color: AppColors.dark),
              ),
              Text('John Doe', style: AppStyles.textMedium16),
            ],
          ),
        ],
      ),
    );
  }
}
