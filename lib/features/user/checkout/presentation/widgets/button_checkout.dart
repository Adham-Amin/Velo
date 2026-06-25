import 'package:flutter/material.dart';
import 'package:velo/core/functions/payment_dialog.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';

class ButtonCheckout extends StatelessWidget {
  const ButtonCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(r'Total: $59.98', style: AppStyles.textSemiBold18),
        ),
        Expanded(
          child: CustomButton(
            title: 'Buy Now',
            onTap: () {
              paymentSuccessDialog(context);
            },
          ),
        ),
      ],
    );
  }
}
