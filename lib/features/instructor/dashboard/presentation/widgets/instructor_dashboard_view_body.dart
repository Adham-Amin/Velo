import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/instructor/dashboard/presentation/widgets/grid_instructor_dashboard.dart';
import 'package:velo/features/instructor/dashboard/presentation/widgets/header_instructor_dashboard.dart';
import 'package:velo/features/instructor/dashboard/presentation/widgets/quick_actions_instructor_dashboard.dart';
import 'package:velo/features/instructor/dashboard/presentation/widgets/recent_enrollments_section.dart';

class InstructorDashboardViewBody extends StatelessWidget {
  const InstructorDashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          HeaderInstructorDashboard(),
          SizedBox(height: 24.h),
          GridInstructorDashboard(),
          SizedBox(height: 24.h),
          QuickActionsInstructorDashboard(),
          SizedBox(height: 24.h),
          RecentEnrollmentsSection(),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
