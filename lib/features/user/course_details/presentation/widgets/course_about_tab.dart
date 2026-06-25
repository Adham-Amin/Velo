import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/user/course_details/presentation/widgets/course_reviews_section.dart';
import 'package:velo/features/user/course_details/presentation/widgets/similar_courses_section.dart';
import 'package:velo/features/user/course_details/presentation/widgets/what_you_learn_section.dart';

class CourseAboutTab extends StatelessWidget {
  const CourseAboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WhatYouLearnSection(),
        SizedBox(height: 24.h),
        const CourseReviewsSection(),
        SizedBox(height: 24.h),
        SimilarCoursesSection(),
      ],
    );
  }
}
