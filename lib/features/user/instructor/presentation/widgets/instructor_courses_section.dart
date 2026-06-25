import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/user/home/presentation/widgets/label_and_see.dart';
import 'package:velo/features/user/instructor/presentation/widgets/instructor_courses_list.dart';

class InstructorCoursesSection extends StatelessWidget {
  const InstructorCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelAndSee(title: 'Courses by David Lee', onTap: () {}),
        SizedBox(height: 12.h),
        InstructorCoursesList(),
      ],
    );
  }
}
