import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/home/presentation/widgets/course_horizontal_list.dart';
import 'package:velo/features/home/presentation/widgets/course_progress_card.dart';
import 'package:velo/features/home/presentation/widgets/course_vertical_list.dart';
import 'package:velo/features/home/presentation/widgets/header_home.dart';
import 'package:velo/features/home/presentation/widgets/label_and_see.dart';
import 'package:velo/features/home/presentation/widgets/learning_path_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          HeaderHome(),
          SizedBox(height: 24.h),
          LabelAndSee(title: 'Continue Learning'),
          SizedBox(height: 12.h),
          CourseProgressCard(),
          SizedBox(height: 24.h),
          LabelAndSee(title: 'Learning Paths', onTap: () {}),
          SizedBox(height: 12.h),
          LearningPathList(),
          SizedBox(height: 24.h),
          LabelAndSee(title: 'Limited Time Offers', onTap: () {}),
          SizedBox(height: 12.h),
          CourseVerticalList(),
          SizedBox(height: 24.h),
          LabelAndSee(title: 'Top Rated Courses', onTap: () {}),
          SizedBox(height: 12.h),
          CourseHorizontalList(),

          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
