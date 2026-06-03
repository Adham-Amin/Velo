import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/auth/presentation/widgets/social_button.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 8.w,
          children: [
            Expanded(child: Divider(thickness: 1.2)),
            Text('OR', style: AppStyles.textRegular14),
            Expanded(child: Divider(thickness: 1.2)),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 24.w,
          children: [
            SocialButton(image: AppAssets.iconsIcGoogle),
            SocialButton(image: AppAssets.iconsIcApple),
            SocialButton(image: AppAssets.iconsIcFacebook),
          ],
        ),
      ],
    );
  }
}
