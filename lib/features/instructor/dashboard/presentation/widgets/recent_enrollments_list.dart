import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/instructor/dashboard/presentation/widgets/enrollment_tile.dart';

class RecentEnrollmentsList extends StatelessWidget {
  const RecentEnrollmentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.background),
      ),
      child: ListView.separated(
        itemCount: 3,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) =>
            Divider(color: AppColors.background, height: 24.h),
        itemBuilder: (context, index) => EnrollmentTile(),
      ),
    );
  }
}
