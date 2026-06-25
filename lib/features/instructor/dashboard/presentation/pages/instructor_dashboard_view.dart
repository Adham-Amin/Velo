import 'package:flutter/material.dart';
import 'package:velo/features/instructor/dashboard/presentation/widgets/instructor_dashboard_view_body.dart';

class InstructorDashboardView extends StatelessWidget {
  const InstructorDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: InstructorDashboardViewBody()));
  }
}
