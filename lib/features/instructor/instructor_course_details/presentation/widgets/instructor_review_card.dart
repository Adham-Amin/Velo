import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/instructor/reviews/domain/entities/review_entity.dart';
import 'package:velo/features/instructor/reviews/presentation/widgets/star_row.dart';

class InstructorReviewCard extends StatelessWidget {
  const InstructorReviewCard({super.key, required this.review});

  final ReviewEntity review;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.background),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24.r,
                backgroundImage: NetworkImage(review.avatarAsset),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(review.name, style: AppStyles.textBold16),
                    const SizedBox(height: 4),
                    StarRow(rating: review.rating),
                  ],
                ),
              ),
              Text(
                review.date,
                style: AppStyles.textRegular12.copyWith(
                  color: AppColors.greyBorder,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            review.comment,
            style: AppStyles.textRegular14.copyWith(color: AppColors.dark),
          ),
        ],
      ),
    );
  }
}
