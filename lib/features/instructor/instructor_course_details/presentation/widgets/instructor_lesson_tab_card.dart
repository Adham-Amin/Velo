import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/instructor/instructor_course_details/domain/entities/lesson_entity.dart';

class InstructorLessonTabCard extends StatelessWidget {
  const InstructorLessonTabCard({super.key, required this.lesson});

  final LessonEntity lesson;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.background),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28.w,
            backgroundColor: AppColors.primary.withValues(alpha: .3),
            child: Text(
              lesson.number.toString(),
              style: AppStyles.textMedium20,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(lesson.title, style: AppStyles.textSemiBold14),
                const SizedBox(height: 3),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 14,
                      color: AppColors.greyBorder,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      lesson.duration,
                      style: AppStyles.textSemiBold14.copyWith(
                        color: AppColors.greyBorder,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_arrow_outlined,
              color: AppColors.primary,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit_outlined,
              color: AppColors.greyBorder,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete_outline,
              color: AppColors.red,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
