import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_styles.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 28.w,
          backgroundImage: AssetImage(AppAssets.imagesUserImage),
        ),
        SizedBox(width: 12.w),
        Text('Ahmed Mohamed', style: AppStyles.textRegular16),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssets.svgsCart),
        ),
      ],
    );
  }
}
