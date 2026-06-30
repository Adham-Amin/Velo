import 'package:flutter/material.dart';
import 'package:velo/features/instructor/my_courses/domain/entities/instructor_course_entity.dart';
import 'package:velo/features/instructor/my_courses/presentation/widgets/edit_course_view_body.dart';

class EditCourseView extends StatelessWidget {
  const EditCourseView({super.key, required this.course});

  final InstructorCourseEntity course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Course')),
      body: EditCourseViewBody(course: course),
    );
  }
}
