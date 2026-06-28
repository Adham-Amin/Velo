import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/instructor/my_courses/domain/entities/instructor_course_entity.dart';
import 'package:velo/features/instructor/my_courses/presentation/widgets/instructor_course_thumbnail.dart';

class CourseCard extends StatelessWidget {
  final InstructorCourseEntity course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {},
      background: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.only(right: 16),
        alignment: Alignment.centerRight,
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.background),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InstructorCourseThumbnail(course: course, onEdit: () {}),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(course.title, style: AppStyles.textBold16),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: AppColors.yellow, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        course.rating.toStringAsFixed(1),
                        style: AppStyles.textRegular12,
                      ),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.people_outline,
                        color: AppColors.greyBorder,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${course.students} Students',
                        style: AppStyles.textRegular12.copyWith(
                          color: AppColors.greyBorder,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.play_circle_outline,
                        color: AppColors.greyBorder,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${course.lessons} Lessons',
                        style: AppStyles.textRegular12.copyWith(
                          color: AppColors.greyBorder,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '\$${course.price.toStringAsFixed(2)}',
                    style: AppStyles.textBold16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
