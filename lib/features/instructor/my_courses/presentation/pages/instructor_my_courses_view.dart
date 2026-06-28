import 'package:flutter/material.dart';
import 'package:velo/features/instructor/my_courses/presentation/widgets/instructor_my_courses_view_body.dart';

class InstructorMyCoursesView extends StatelessWidget {
  const InstructorMyCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Courses')),
      body: const InstructorMyCoursesViewBody(),
    );
  }
}
