import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/user/course_details/presentation/widgets/lesson_item.dart';

class CourseLessonsTab extends StatelessWidget {
  const CourseLessonsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('24 Lessons', style: AppStyles.textSemiBold18),
          SizedBox(height: 12.h),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => LessonItem(isEnabled: index == 0),
            separatorBuilder: (context, index) => SizedBox(height: 12.h),
            itemCount: 6,
          ),
        ],
      ),
    );
  }
}
