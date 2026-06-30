import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_course_details/domain/entities/lesson_entity.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/add_lesson_view_body.dart';

class AddLessonView extends StatelessWidget {
  const AddLessonView({super.key, this.lesson});

  final LessonEntity? lesson;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Lesson')),
      body: AddLessonViewBody(lesson: lesson),
    );
  }
}
