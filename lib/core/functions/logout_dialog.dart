import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';

Future<dynamic> logoutDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Dialog(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Log Out?', style: AppStyles.textSemiBold18),
            SizedBox(height: 8.h),
            Text(
              'Are you sure you want to log out?',
              textAlign: TextAlign.center,
              style: AppStyles.textRegular16,
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: 'Cancel',
                    backgroundColor: AppColors.background,
                    colorText: AppColors.black,
                    onTap: () => context.pop(),
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: CustomButton(
                    title: 'Yes, Log Out',
                    backgroundColor: AppColors.red,
                    onTap: () => context.go(AppRoutes.auth),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
