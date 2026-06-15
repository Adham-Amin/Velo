import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/functions/navigate_to_tab.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';

class EmptyWishlist extends StatelessWidget {
  const EmptyWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.svgsEmptyWishlist),
          SizedBox(height: 24.h),
          Text('Your Wishlist Is Empty', style: AppStyles.textSemiBold24),
          SizedBox(height: 8.h),
          Text(
            'Save your favorite courses here',
            style: AppStyles.textRegular16.copyWith(
              color: AppColors.greyBorder,
            ),
          ),
          SizedBox(height: 24.h),
          CustomButton(
            title: 'Explore Courses',
            onTap: () {
              context.pop();
              navigateToTab(context, 0);
            },
          ),
        ],
      ),
    );
  }
}
