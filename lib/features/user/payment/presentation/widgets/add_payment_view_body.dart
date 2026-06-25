import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/features/user/payment/presentation/widgets/payment_card_preview.dart';
import 'package:velo/features/user/payment/presentation/widgets/payment_form.dart';

class AddPaymentViewBody extends StatefulWidget {
  const AddPaymentViewBody({super.key});

  @override
  State<AddPaymentViewBody> createState() => _AddPaymentViewBodyState();
}

class _AddPaymentViewBodyState extends State<AddPaymentViewBody> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  late TextEditingController cardHolderNameController;
  late TextEditingController cardNumberController;
  late TextEditingController expiryDateController;
  late TextEditingController cvvCodeController;
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();

    cardHolderNameController = TextEditingController();
    cardNumberController = TextEditingController();
    expiryDateController = TextEditingController();
    cvvCodeController = TextEditingController();

    cardHolderNameController.addListener(_updateCard);
    cardNumberController.addListener(_updateCard);
    expiryDateController.addListener(_updateCard);
    cvvCodeController.addListener(_updateCard);
  }

  void _updateCard() {
    setState(() {
      cardHolderName = cardHolderNameController.text;
      cardNumber = cardNumberController.text;
      expiryDate = expiryDateController.text;
      cvvCode = cvvCodeController.text;
    });
  }

  @override
  void dispose() {
    cardHolderNameController.dispose();
    cardNumberController.dispose();
    expiryDateController.dispose();
    cvvCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            PaymentCardPreview(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
            ),
            SizedBox(height: 24.h),
            PaymentForm(
              cardHolderNameController: cardHolderNameController,
              cardNumberController: cardNumberController,
              expiryDateController: expiryDateController,
              cvvController: cvvCodeController,
            ),
            SizedBox(height: 24.h),
            CustomButton(
              title: 'Add Card',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
