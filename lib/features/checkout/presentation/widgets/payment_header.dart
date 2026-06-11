import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class PaymentHeader extends StatelessWidget {
  const PaymentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Payment Method', style: AppStyles.textSemiBold18),
        GestureDetector(
          child: Text(
            'Change',
            style: AppStyles.textSemiBold16.copyWith(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
