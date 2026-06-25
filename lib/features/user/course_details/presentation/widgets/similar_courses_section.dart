import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/user/course_details/presentation/widgets/similar_courses_list.dart';
import 'package:velo/features/user/home/presentation/widgets/label_and_see.dart';

class SimilarCoursesSection extends StatelessWidget {
  const SimilarCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          LabelAndSee(title: 'Similar Courses', onTap: () {}),
          SizedBox(height: 12.h),
          SimilarCoursesList(),
        ],
      ),
    );
  }
}
