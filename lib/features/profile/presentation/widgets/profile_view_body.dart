import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/profile/presentation/widgets/profile_header.dart';
import 'package:velo/features/profile/presentation/widgets/profile_setting_item.dart';
import 'package:velo/features/profile/presentation/widgets/profile_setting_section.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  bool _isDarkMode = false;
  bool _isNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          const ProfileHeader(),
          SizedBox(height: 24.h),
          _buildAccountSection(),
          SizedBox(height: 24.h),
          _buildGeneralSettingSection(),
          SizedBox(height: 24.h),
          _buildOtherSettingSection(),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }

  Widget _buildAccountSection() {
    return ProfileSettingSection(
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
    );
  }

  Widget _buildGeneralSettingSection() {
    return ProfileSettingSection(
      title: 'General Setting',
      children: [
        ProfileSettingItem(
          icon: Icons.dark_mode_outlined,
          label: 'Dark mode',
          trailing: Switch(
            value: _isDarkMode,
            onChanged: (value) {
              setState(() => _isDarkMode = value);
            },
            activeTrackColor: AppColors.primary,
          ),
        ),
        ProfileSettingItem(
          icon: Icons.notifications_outlined,
          label: 'Notification',
          trailing: Switch(
            value: _isNotificationEnabled,
            onChanged: (value) {
              setState(() => _isNotificationEnabled = value);
            },
            activeTrackColor: AppColors.primary,
          ),
        ),
        ProfileSettingItem(
          icon: Icons.language,
          label: 'Change language',
          onTap: () {},
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'English',
                style: AppStyles.textSemiBold14.copyWith(
                  color: AppColors.greyBorder,
                ),
              ),
              SizedBox(width: 4.w),
              Icon(
                Icons.chevron_right,
                size: 20.sp,
                color: AppColors.greyBorder,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOtherSettingSection() {
    return ProfileSettingSection(
      title: 'Other Setting',
      children: [
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
    );
  }
}
