import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/profile/presentation/widgets/profile_header.dart';
import 'package:velo/features/profile/presentation/widgets/profile_setting_item.dart';
import 'package:velo/features/profile/presentation/widgets/profile_setting_section.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          const ProfileHeader(),
          SizedBox(height: 24.h),
          ProfileSettingSection(
            title: 'Account',
            children: [
              ProfileSettingItem(
                icon: Icons.person_outline,
                label: 'Edit profile',
                onTap: () {},
              ),
              ProfileSettingItem(
                icon: Icons.lock_outline,
                label: 'Change password',
                onTap: () {},
              ),
              ProfileSettingItem(
                icon: Icons.favorite_outline,
                label: 'Wishlist',
                onTap: () {},
              ),
              ProfileSettingItem(
                icon: Icons.credit_card,
                label: 'Payment Method',
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: 24.h),
          ProfileSettingSection(
            title: 'Other Setting',
            children: [
              ProfileSettingItem(
                icon: Icons.notifications_outlined,
                label: 'Notification',
                trailing: Switch(
                  value: true,
                  onChanged: (value) {},
                  activeTrackColor: AppColors.primary,
                ),
              ),
              ProfileSettingItem(
                icon: Icons.headset_mic_outlined,
                label: 'Help Center',
                onTap: () {},
              ),
              ProfileSettingItem(
                icon: Icons.logout,
                label: 'Log out',
                labelColor: AppColors.red,
                iconColor: AppColors.red,
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
