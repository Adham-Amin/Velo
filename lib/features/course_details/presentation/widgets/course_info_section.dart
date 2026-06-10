import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/course_details/presentation/widgets/course_meta_row.dart';
import 'package:velo/features/course_details/presentation/widgets/instructor_row.dart';

class CourseInfoSection extends StatelessWidget {
  const CourseInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Advanced UI/UX Design', style: AppStyles.textSemiBold20),
          SizedBox(height: 12.h),
          const CourseMetaRow(),
          SizedBox(height: 12.h),
          const InstructorRow(),
        ],
      ),
    );
  }
}
