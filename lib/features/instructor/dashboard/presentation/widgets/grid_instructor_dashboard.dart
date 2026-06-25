import 'package:flutter/material.dart';
import 'package:velo/features/instructor/dashboard/presentation/widgets/stat_card.dart';

class GridInstructorDashboard extends StatelessWidget {
  const GridInstructorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.3,
      children: const [
        StatCard(
          icon: Icons.people_outline_rounded,
          iconBgColor: Color(0xFFEEEEFD),
          iconColor: Color(0xFF5B5BD6),
          value: '1,847',
          label: 'Students',
        ),
        StatCard(
          icon: Icons.bookmark_outline_rounded,
          iconBgColor: Color(0xFFE6F4FB),
          iconColor: Color(0xFF3AACDF),
          value: '12',
          label: 'Courses',
        ),
        StatCard(
          icon: Icons.attach_money_rounded,
          iconBgColor: Color(0xFFE6F9EF),
          iconColor: Color(0xFF27AE60),
          value: '\$24.5k',
          label: 'Revenue',
        ),
        StatCard(
          icon: Icons.star_outline_rounded,
          iconBgColor: Color(0xFFFFF4E0),
          iconColor: Color(0xFFF2A30F),
          value: '4.8',
          label: 'Avg Rating',
        ),
      ],
    );
  }
}
