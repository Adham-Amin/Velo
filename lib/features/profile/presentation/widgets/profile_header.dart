import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 28.w,
              backgroundImage: const AssetImage(AppAssets.imagesUserImage),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('John Doe', style: AppStyles.textRegular16),
                  SizedBox(height: 4.h),
                  Text(
                    'JohnDoe@gmail.com',
                    style: AppStyles.textRegular14.copyWith(
                      color: AppColors.greyBorder,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
