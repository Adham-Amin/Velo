import 'package:flutter/material.dart';
import 'package:velo/features/user/course_details/presentation/widgets/course_about_tab.dart';
import 'package:velo/features/user/course_details/presentation/widgets/course_lessons_tab.dart';

class CourseTabContent extends StatelessWidget {
  const CourseTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = DefaultTabController.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return switch (controller.index) {
          1 => const CourseLessonsTab(),
          _ => const CourseAboutTab(),
        };
      },
    );
  }
}
