import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/instructor/dashboard/presentation/widgets/recent_enrollments_list.dart';
import 'package:velo/features/user/home/presentation/widgets/label_and_see.dart';

class RecentEnrollmentsSection extends StatelessWidget {
  const RecentEnrollmentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelAndSee(title: 'Recent Enrollments', onTap: () {}),
        SizedBox(height: 12.h),
        RecentEnrollmentsList(),
      ],
    );
  }
}
