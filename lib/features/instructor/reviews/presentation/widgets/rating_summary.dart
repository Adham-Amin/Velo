import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/instructor/reviews/presentation/widgets/overall_rating_section.dart';

class RatingSummary extends StatelessWidget {
  final double overallRating;
  final int totalReviews;
  final List<int> ratingCounts;

  const RatingSummary({
    super.key,
    required this.overallRating,
    required this.totalReviews,
    required this.ratingCounts,
  });

  @override
  Widget build(BuildContext context) {
    final maxCount = ratingCounts.reduce((a, b) => a > b ? a : b);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OverallRatingSection(
          overallRating: overallRating,
          totalReviews: totalReviews,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(5, (i) {
              final starLabel = 5 - i;
              final count = ratingCounts[i];
              final fraction = maxCount == 0 ? 0.0 : count / maxCount;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  children: [
                    const Icon(Icons.star, color: AppColors.yellow, size: 14),
                    const SizedBox(width: 4),
                    Text(
                      '$starLabel',
                      style: AppStyles.textRegular14.copyWith(
                        color: AppColors.greyBorder,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: fraction,
                          backgroundColor: AppColors.background,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.yellow,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '$count',
                      textAlign: TextAlign.end,
                      style: AppStyles.textRegular14.copyWith(
                        color: AppColors.greyBorder,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
