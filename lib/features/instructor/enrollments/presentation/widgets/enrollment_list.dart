import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/instructor/dashboard/presentation/widgets/enrollment_tile.dart';

class EnrollmentList extends StatelessWidget {
  const EnrollmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, index) =>
            Divider(color: AppColors.background, height: 24.h),
        itemBuilder: (context, index) => EnrollmentTile(),
      ),
    );
  }
}
