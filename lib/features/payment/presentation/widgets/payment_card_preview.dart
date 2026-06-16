import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_styles.dart';

class PaymentCardPreview extends StatelessWidget {
  const PaymentCardPreview({
    super.key,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardHolderName,
    required this.cvvCode,
  });

  final String cardNumber;
  final String expiryDate;
  final String cardHolderName;
  final String cvvCode;

  CardType getCardType(String number) {
    final clean = number.replaceAll(' ', '');

    if (clean.startsWith('4')) {
      return CardType.visa;
    }

    if (clean.startsWith('5')) {
      return CardType.mastercard;
    }

    return CardType.otherBrand;
  }

  @override
  Widget build(BuildContext context) {
    return CreditCardWidget(
      height: 200.h,
      bankName: getCardType(cardNumber) == CardType.visa
          ? 'Visa'
          : getCardType(cardNumber) == CardType.mastercard
          ? 'Mastercard'
          : 'XXXX',
      cardNumber: cardNumber.isEmpty ? 'XXXX XXXX XXXX XXXX' : cardNumber,
      expiryDate: expiryDate.isEmpty ? 'XX/YY' : expiryDate,
      cardHolderName: cardHolderName.isEmpty ? 'CARD HOLDER' : cardHolderName,
      cvvCode: cvvCode.isEmpty ? 'XXX' : cvvCode,
      labelValidThru: 'VALID',
      showBackView: false,
      cardType: getCardType(cardNumber),
      isSwipeGestureEnabled: false,
      isHolderNameVisible: true,
      backgroundImage: AppAssets.imagesCard,
      textStyle: AppStyles.textSemiBold18.copyWith(color: Colors.white),
      onCreditCardWidgetChange: (_) {},
    );
  }
}
