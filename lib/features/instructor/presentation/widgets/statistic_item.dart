import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_styles.dart';

class StatisticItem extends StatelessWidget {
  const StatisticItem({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: AppStyles.textSemiBold20),
        SizedBox(height: 8.h),
        Text(label, style: AppStyles.textRegular14),
      ],
    );
  }
}
