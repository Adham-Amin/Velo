import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_edit_profile/presentation/widgets/instructor_edit_profile_view_body.dart';

class InstructorEditProfileView extends StatelessWidget {
  const InstructorEditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: const InstructorEditProfileViewBody(),
    );
  }
}
