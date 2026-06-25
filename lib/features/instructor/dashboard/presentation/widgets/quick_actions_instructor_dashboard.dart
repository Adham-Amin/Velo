import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/instructor/dashboard/presentation/widgets/action_button.dart';
import 'package:velo/features/user/home/presentation/widgets/label_and_see.dart';

class QuickActionsInstructorDashboard extends StatelessWidget {
  const QuickActionsInstructorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelAndSee(title: 'Quick Actions'),
        SizedBox(height: 12.h),
        Row(
          children: const [
            Expanded(
              child: ActionButton(
                icon: Icons.add_circle_outline_rounded,
                label: 'Create Course',
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: ActionButton(
                icon: Icons.rate_review_outlined,
                label: 'Reviews',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
