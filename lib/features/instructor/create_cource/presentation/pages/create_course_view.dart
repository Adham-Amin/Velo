import 'package:flutter/material.dart';
import 'package:velo/features/instructor/create_cource/presentation/widgets/create_course_view_body.dart';

class CreateCourseView extends StatelessWidget {
  const CreateCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Course')),
      body: const CreateCourseViewBody(),
    );
  }
}
