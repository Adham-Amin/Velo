import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/user/course_details/presentation/widgets/review_item.dart';
import 'package:velo/features/user/home/presentation/widgets/label_and_see.dart';

class CourseReviewsSection extends StatelessWidget {
  const CourseReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      decoration: BoxDecoration(color: AppColors.primary.withValues(alpha: .3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelAndSee(title: 'Reviews', onTap: () {}),
          SizedBox(height: 12.h),
          SizedBox(
            height: 180.h,
            child: ListView.separated(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 12.w),
              itemBuilder: (context, index) => const ReviewItem(),
            ),
          ),
        ],
      ),
    );
  }
}
