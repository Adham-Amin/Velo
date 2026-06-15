import 'package:flutter/material.dart';
import 'package:velo/features/instructor/presentation/widgets/instructor_view_body.dart';

class InstructorView extends StatelessWidget {
  const InstructorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instructor Profile')),
      body: const InstructorViewBody(),
    );
  }
}
