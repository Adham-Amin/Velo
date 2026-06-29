import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/add_lesson_view_body.dart';

class AddLessonView extends StatelessWidget {
  const AddLessonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Lesson')),
      body: const AddLessonViewBody(),
    );
  }
}
