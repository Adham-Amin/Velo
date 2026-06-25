import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class InstructorInfo extends StatelessWidget {
  const InstructorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 45.w,
          backgroundImage: AssetImage(AppAssets.imagesUserPhoto),
        ),
        SizedBox(height: 12.h),
        Text('David Lee', style: AppStyles.textSemiBold24),
        SizedBox(height: 4.h),
        Text(
          'Senior Product Designer',
          style: AppStyles.textRegular16.copyWith(color: AppColors.greyBorder),
        ),
      ],
    );
  }
}
