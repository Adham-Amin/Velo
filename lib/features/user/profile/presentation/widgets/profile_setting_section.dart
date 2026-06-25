import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_styles.dart';

class ProfileSettingSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const ProfileSettingSection({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.textSemiBold16),
        SizedBox(height: 12.h),
        ...children,
      ],
    );
  }
}
