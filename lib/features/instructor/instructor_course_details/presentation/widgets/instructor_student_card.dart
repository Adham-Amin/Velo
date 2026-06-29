import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/instructor/instructor_course_details/domain/entities/student_entity.dart';

class InstructorStudentCard extends StatelessWidget {
  const InstructorStudentCard({super.key, required this.student});

  final StudentEntity student;

  @override
  Widget build(BuildContext context) {
    final int pct = (student.progress * 100).round();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.background),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundImage: NetworkImage(student.avatar),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(student.name, style: AppStyles.textBold16),
                const SizedBox(height: 2),
                Text(
                  'Enrolled ${student.enrolledDate}',
                  style: AppStyles.textRegular12.copyWith(
                    color: AppColors.greyBorder,
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: student.progress,
                          minHeight: 6,
                          backgroundColor: AppColors.background,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text('$pct%', style: AppStyles.textRegular12),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
