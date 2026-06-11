import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';

Future<dynamic> paymentSuccessDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Dialog(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFEAF8F4),
                border: Border.all(color: const Color(0xFF57D3BC), width: 2),
              ),
              child: const Icon(
                Icons.check,
                size: 60,
                color: Color(0xFF7EDAC8),
              ),
            ),
            SizedBox(height: 32.h),
            Text(
              'Payment Successful!',
              textAlign: TextAlign.center,
              style: AppStyles.textSemiBold20,
            ),
            SizedBox(height: 16.h),
            Text(
              'Your order has been processed successfully',
              textAlign: TextAlign.center,
              style: AppStyles.textRegular18,
            ),
            SizedBox(height: 32.h),
            CustomButton(
              title: 'Start Learning',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 16.h),
            CustomButton(
              title: 'Back to Home',
              backgroundColor: AppColors.background,
              colorText: AppColors.black,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ),
  );
}
