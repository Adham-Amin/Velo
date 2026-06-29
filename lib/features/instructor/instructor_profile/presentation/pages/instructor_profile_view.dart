import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_profile/presentation/widgets/instructor_profile_view_body.dart';

class InstructorProfileView extends StatelessWidget {
  const InstructorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const InstructorProfileViewBody(),
    );
  }
}
