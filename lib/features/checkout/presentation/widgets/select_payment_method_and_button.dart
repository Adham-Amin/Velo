import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/checkout/presentation/widgets/button_checkout.dart';
import 'package:velo/features/checkout/presentation/widgets/payment_item.dart';
import 'package:velo/features/checkout/presentation/widgets/promo_section.dart';

class SelectPaymentMethodAndButton extends StatefulWidget {
  const SelectPaymentMethodAndButton({super.key});

  @override
  State<SelectPaymentMethodAndButton> createState() =>
      _SelectPaymentMethodAndButtonState();
}

class _SelectPaymentMethodAndButtonState
    extends State<SelectPaymentMethodAndButton> {
  int selectPayment = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentItem(
          onTap: () {
            setState(() {
              selectPayment = 0;
            });
          },
          title: 'MasterCard',
          icon: AppAssets.svgsMastercard,
          isSelected: selectPayment == 0,
        ),
        SizedBox(height: 8.h),
        PaymentItem(
          onTap: () {
            setState(() {
              selectPayment = 1;
            });
          },
          title: 'Visa Card',
          icon: AppAssets.svgsVisa,
          isSelected: selectPayment == 1,
        ),
        SizedBox(height: 8.h),
        PaymentItem(
          onTap: () {
            setState(() {
              selectPayment = 2;
            });
          },
          title: 'Paypal',
          icon: AppAssets.svgsPaypal,
          isSelected: selectPayment == 2,
        ),
        Divider(height: 32, color: AppColors.primary.withValues(alpha: .3)),
        PromoSection(),
        Divider(height: 32, color: AppColors.primary.withValues(alpha: .3)),
        ButtonCheckout(),
        SizedBox(height: 32.h),
      ],
    );
  }
}
