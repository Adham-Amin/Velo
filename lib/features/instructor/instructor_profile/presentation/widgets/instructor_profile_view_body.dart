import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/functions/logout_dialog.dart';
import 'package:velo/core/functions/navigate_to_tab.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/instructor/instructor_profile/presentation/widgets/instructor_header_profile.dart';
import 'package:velo/features/instructor/instructor_profile/presentation/widgets/profile_stats_card.dart';
import 'package:velo/features/user/profile/presentation/widgets/profile_setting_item.dart';
import 'package:velo/features/user/profile/presentation/widgets/profile_setting_section.dart';

class InstructorProfileViewBody extends StatelessWidget {
  const InstructorProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          InstructorHeaderProfile(),
          SizedBox(height: 16.h),
          ProfileStatsCard(),
          SizedBox(height: 24.h),
          ProfileSettingSection(
            title: 'Account',
            children: [
              ProfileSettingItem(
                icon: Icons.person_outline,
                label: 'Edit profile',
                onTap: () => context.push(AppRoutes.instructorEditProfile),
              ),
              ProfileSettingItem(
                icon: Icons.lock_outline,
                label: 'Change password',
                onTap: () => context.push(AppRoutes.instructorChangePass),
              ),
              ProfileSettingItem(
                icon: Icons.video_collection_outlined,
                label: 'My Courses',
                onTap: () => navigateToTabInstructor(context, 1),
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
                onTap: () => logoutDialog(context),
              ),
            ],
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
