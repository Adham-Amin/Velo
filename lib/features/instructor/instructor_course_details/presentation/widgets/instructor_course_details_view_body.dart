import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/header_instructor_course_details.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/instructor_lessons_tab.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/instructor_reviews_tab.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/instructor_students_tab.dart';

class InstructorCourseDetailsViewBody extends StatelessWidget {
  const InstructorCourseDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            HeaderInstructorCourseDetails(),
            SizedBox(height: 24.h),
            TabBar(
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.dark,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: AppColors.primary, width: 4.w),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 16.w),
              dividerColor: Colors.transparent,
              tabs: [
                Tab(text: 'Lessons'),
                Tab(text: 'Students'),
                Tab(text: 'Reviews'),
              ],
            ),
            SizedBox(height: 12.h),
            Expanded(
              child: TabBarView(
                children: [
                  InstructorLessonsTab(),
                  InstructorStudentsTab(),
                  InstructorReviewsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
