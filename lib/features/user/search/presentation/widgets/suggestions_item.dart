import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_styles.dart';

class SuggestionsItem extends StatelessWidget {
  const SuggestionsItem({super.key, required this.onTap, required this.title});

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(AppAssets.svgsSearch),
          SizedBox(width: 8.w),
          Text(title, style: AppStyles.textRegular16),
        ],
      ),
    );
  }
}
