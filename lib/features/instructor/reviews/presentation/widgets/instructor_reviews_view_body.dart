import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/instructor/reviews/domain/entities/review_entity.dart';
import 'package:velo/features/instructor/reviews/presentation/widgets/rating_summary.dart';
import 'package:velo/features/instructor/reviews/presentation/widgets/review_card.dart';

class InstructorReviewsViewBody extends StatelessWidget {
  const InstructorReviewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          RatingSummary(
            overallRating: 4.5,
            totalReviews: 8,
            ratingCounts: [5, 2, 1, 0, 0],
          ),
          SizedBox(height: 24.h),
          Expanded(
            child: ListView.separated(
              itemCount: ReviewEntity.reviews.length,
              separatorBuilder: (context, index) => SizedBox(height: 12.h),
              itemBuilder: (context, index) =>
                  ReviewCard(review: ReviewEntity.reviews[index]),
            ),
          ),
        ],
      ),
    );
  }
}
