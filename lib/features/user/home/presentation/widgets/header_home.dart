import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: const NetworkImage(
            'https://i.pravatar.cc/150?img=2',
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good morning,',
                style: AppStyles.textRegular14.copyWith(
                  color: AppColors.greyBorder,
                ),
              ),
              Text('Adham Amin', style: AppStyles.textBold18),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.background),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ),
        SizedBox(width: 12.w),
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.background),
          ),
          child: IconButton(
            onPressed: () => context.push(AppRoutes.checkout),
            icon: SvgPicture.asset(AppAssets.svgsCart),
          ),
        ),
      ],
    );
  }
}
