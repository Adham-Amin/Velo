import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/instructor/reviews/presentation/widgets/star_row.dart';

class OverallRatingSection extends StatelessWidget {
  const OverallRatingSection({
    super.key,
    required this.overallRating,
    required this.totalReviews,
  });

  final double overallRating;
  final int totalReviews;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          overallRating.toStringAsFixed(1),
          style: AppStyles.textBold32.copyWith(
            color: AppColors.primary,
            fontSize: 42.sp,
          ),
        ),
        const SizedBox(height: 6),
        StarRow(rating: overallRating),
        const SizedBox(height: 4),
        Text(
          '$totalReviews reviews',
          style: AppStyles.textRegular14.copyWith(color: AppColors.greyBorder),
        ),
      ],
    );
  }
}
