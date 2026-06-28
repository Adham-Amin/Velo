import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/instructor/reviews/domain/entities/review_entity.dart';
import 'package:velo/features/instructor/reviews/presentation/widgets/star_row.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.review});

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
                radius: 22,
                backgroundImage: NetworkImage(review.avatarAsset),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(review.name, style: AppStyles.textBold16),
                    const SizedBox(height: 2),
                    Text(
                      review.course,
                      style: AppStyles.textRegular12.copyWith(
                        color: AppColors.greyBorder,
                      ),
                    ),
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
          const SizedBox(height: 10),
          StarRow(rating: review.rating),
          const SizedBox(height: 10),
          Text(review.comment, style: AppStyles.textRegular14),
        ],
      ),
    );
  }
}
