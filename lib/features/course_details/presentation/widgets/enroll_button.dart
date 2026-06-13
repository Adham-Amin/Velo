import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';

class EnrollButton extends StatelessWidget {
  const EnrollButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        bottom: 32.h,
        top: 24.h,
      ),
      color: AppColors.white,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price', style: AppStyles.textRegular14),
                Text(r'$30.99', style: AppStyles.textSemiBold20),
              ],
            ),
          ),
          Expanded(
            child: CustomButton(title: 'Enroll Now', onTap: () {}),
          ),
        ],
      ),
    );
  }
}
