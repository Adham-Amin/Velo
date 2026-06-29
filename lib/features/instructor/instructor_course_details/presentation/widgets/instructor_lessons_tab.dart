import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/instructor/instructor_course_details/domain/entities/lesson_entity.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/header_instructorlessons_tab.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/instructor_lesson_tab_card.dart';

class InstructorLessonsTab extends StatelessWidget {
  const InstructorLessonsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderInstructorlessonsTab(),
        SizedBox(height: 12.h),
        Expanded(
          child: ListView.separated(
            itemCount: LessonEntity.lessons.length,
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => SizedBox(height: 12.h),
            itemBuilder: (context, index) =>
                InstructorLessonTabCard(lesson: LessonEntity.lessons[index]),
          ),
        ),
      ],
    );
  }
}
