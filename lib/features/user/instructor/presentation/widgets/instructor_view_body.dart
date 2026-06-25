import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/user/instructor/presentation/widgets/instructor_about_section.dart';
import 'package:velo/features/user/instructor/presentation/widgets/instructor_courses_section.dart';
import 'package:velo/features/user/instructor/presentation/widgets/instructor_info.dart';

class InstructorViewBody extends StatelessWidget {
  const InstructorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          InstructorInfo(),
          SizedBox(height: 24.h),
          InstructorAboutSection(),
          SizedBox(height: 24.h),
          InstructorCoursesSection(),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
