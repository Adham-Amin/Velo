import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/user/payment/presentation/widgets/payment_card_header.dart';
import 'package:velo/features/user/payment/presentation/widgets/payment_info_item.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          PaymentCardHeader(),
          SizedBox(height: 12.h),
          Container(
            height: 200.h,
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: DecorationImage(
                image: AssetImage(AppAssets.imagesCard),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderCard(),
                Spacer(),
                Text(
                  '**** **** **** 1234',
                  style: AppStyles.textBold20.copyWith(color: AppColors.white),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PaymentInfoItem(
                      label: 'CARDHOLDER NAME',
                      value: 'Adham Amin',
                    ),
                    PaymentInfoItem(label: 'EXPIRY DATE', value: '12/24'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Mastercard',
          style: AppStyles.textBold20.copyWith(color: AppColors.white),
        ),
        SvgPicture.asset(AppAssets.svgsMastercard),
      ],
    );
  }
}
