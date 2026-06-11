import 'package:flutter/material.dart';
import 'package:velo/features/my_courses/presentation/widgets/my_courses_view_body.dart';

class MyCoursesView extends StatelessWidget {
  const MyCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Courses')),
      body: const MyCoursesViewBody(),
    );
  }
}
