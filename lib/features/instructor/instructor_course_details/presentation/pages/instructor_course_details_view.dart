import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/instructor_course_details_view_body.dart';

class InstructorCourseDetailsView extends StatelessWidget {
  const InstructorCourseDetailsView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: InstructorCourseDetailsViewBody(),
    );
  }
}
