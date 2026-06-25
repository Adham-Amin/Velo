import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/user/home/presentation/widgets/course_card_vertical.dart';

class SimilarCoursesList extends StatelessWidget {
  const SimilarCoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 295.h,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) => CourseCardVertical(),
      ),
    );
  }
}
