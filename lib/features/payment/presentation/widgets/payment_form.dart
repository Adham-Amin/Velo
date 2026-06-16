import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/functions/validators.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';
import 'package:velo/features/payment/presentation/widgets/card_number_formatter.dart';
import 'package:velo/features/payment/presentation/widgets/expiry_date_formatter.dart';

class PaymentForm extends StatelessWidget {
  const PaymentForm({
    super.key,
    required this.cardHolderNameController,
    required this.cardNumberController,
    required this.expiryDateController,
    required this.cvvController,
  });

  final TextEditingController cardHolderNameController;
  final TextEditingController cardNumberController;
  final TextEditingController expiryDateController;
  final TextEditingController cvvController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Label('Card Holder Name'),
        CustomTextFormField(
          controller: cardHolderNameController,
          validator: Validators.name,
          prefixIcon: const Icon(Icons.person),
          hintText: 'Enter Your Card Holder Name',
        ),
        SizedBox(height: 16.h),
        _Label('Card Number'),
        CustomTextFormField(
          controller: cardNumberController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Card number is required';
            }
            final cardNumber = value.replaceAll(' ', '');
            if (cardNumber.length != 16) {
              return 'Card number must be 16 digits';
            }
            if (!cardNumber.startsWith('4') && !cardNumber.startsWith('5')) {
              return 'Only Visa or Mastercard are allowed';
            }
            return null;
          },
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            CardNumberFormatter(),
          ],
          prefixIcon: const Icon(Icons.credit_card),
          hintText: '1234 5678 9012 3456',
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Label('Expiry Date'),
                  CustomTextFormField(
                    controller: expiryDateController,
                    validator: (value) {
                      if (value == null || value.length != 5) {
                        return 'Invalid date';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      ExpiryDateFormatter(),
                    ],
                    prefixIcon: const Icon(Icons.calendar_month),
                    hintText: 'MM/YY',
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Label('CVV'),
                  CustomTextFormField(
                    controller: cvvController,
                    validator: (value) {
                      if (value == null || value.length < 3) {
                        return 'Invalid CVV';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(3),
                    ],
                    hintText: '123',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _Label extends StatelessWidget {
  const _Label(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(title, style: AppStyles.textRegular12),
      ),
    );
  }
}
