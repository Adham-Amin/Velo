import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class PaymentCardHeader extends StatelessWidget {
  const PaymentCardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Current Method', style: AppStyles.textSemiBold18),
        Spacer(),
        TextButton.icon(
          onPressed: () {},
          label: Text(
            'Remove Card',
            style: AppStyles.textSemiBold16.copyWith(color: AppColors.red),
          ),
          icon: Icon(Icons.delete_outline, color: AppColors.red),
        ),
      ],
    );
  }
}
