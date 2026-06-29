import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_change_pass/presentation/widgets/instructor_change_pass_view_body.dart';

class InstructorChangePassView extends StatelessWidget {
  const InstructorChangePassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Password')),
      body: const InstructorChangePassViewBody(),
    );
  }
}
