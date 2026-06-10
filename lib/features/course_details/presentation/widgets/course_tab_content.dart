import 'package:flutter/material.dart';
import 'package:velo/features/course_details/presentation/widgets/course_about_tab.dart';
import 'package:velo/features/course_details/presentation/widgets/course_lessons_tab.dart';

class CourseTabContent extends StatefulWidget {
  const CourseTabContent({super.key});

  @override
  State<CourseTabContent> createState() => CourseTabContentState();
}

class CourseTabContentState extends State<CourseTabContent> {
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
