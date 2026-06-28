import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';
import 'package:velo/features/instructor/my_courses/domain/entities/instructor_course_entity.dart';
import 'package:velo/features/instructor/my_courses/presentation/widgets/course_card.dart';

class InstructorMyCoursesViewBody extends StatelessWidget {
  const InstructorMyCoursesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          CustomTextFormField(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search your courses',
          ),
          SizedBox(height: 24.h),
          Expanded(
            child: ListView.separated(
              itemCount: InstructorCourseEntity.courses.length,
              separatorBuilder: (_, _) => SizedBox(height: 16.h),
              itemBuilder: (context, index) {
                final course = InstructorCourseEntity.courses[index];
                return CourseCard(course: course);
              },
            ),
          ),
        ],
      ),
    );
  }
}
