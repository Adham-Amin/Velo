import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/user/checkout/presentation/widgets/checkout_list.dart';
import 'package:velo/features/user/checkout/presentation/widgets/payment_header.dart';
import 'package:velo/features/user/checkout/presentation/widgets/select_payment_method_and_button.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckoutList(),
          Divider(height: 32, color: AppColors.primary.withValues(alpha: .3)),
          PaymentHeader(),
          SizedBox(height: 16.h),
          SelectPaymentMethodAndButton(),
        ],
      ),
    );
  }
}
