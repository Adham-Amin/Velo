import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/home/presentation/widgets/course_progress_card.dart';

class MyCoursesViewBody extends StatelessWidget {
  const MyCoursesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: 5,
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
        itemBuilder: (context, index) => CourseProgressCard(),
      ),
    );
  }
}
