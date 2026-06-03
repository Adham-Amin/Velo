import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:velo/core/utils/app_colors.dart';

class PinCode extends StatelessWidget {
  const PinCode({super.key, required this.onCodeChanged});

  final Function(String)? onCodeChanged;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.h,
      textStyle: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        length: 4,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: defaultPinTheme.copyDecorationWith(
          border: Border.all(color: AppColors.primary, width: 1.5),
        ),
        submittedPinTheme: defaultPinTheme,
        separatorBuilder: (index) => SizedBox(width: 12.w),
        keyboardType: TextInputType.number,
        autofocus: true,
        onCompleted: onCodeChanged,
      ),
    );
  }
}
