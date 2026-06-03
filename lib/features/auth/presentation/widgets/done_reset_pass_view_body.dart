import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/features/auth/presentation/widgets/reset_paasword_header.dart';

class DoneResetPassViewBody extends StatelessWidget {
  const DoneResetPassViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResetPaaswordHeader(
            image: AppAssets.svgsDonePass,
            title: 'Password Reset Successful!',
            subtitle: 'Your password has been reset successfully',
          ),
          SizedBox(height: 32.h),
          CustomButton(
            title: 'Back to login',
            onTap: () {
              context.go(AppRoutes.auth);
            },
          ),
        ],
      ),
    );
  }
}
