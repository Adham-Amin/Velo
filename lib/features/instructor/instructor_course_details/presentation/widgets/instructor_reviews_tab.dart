import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/instructor_review_card.dart';
import 'package:velo/features/instructor/reviews/domain/entities/review_entity.dart';

class InstructorReviewsTab extends StatelessWidget {
  const InstructorReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: ReviewEntity.reviews.length,
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) =>
          InstructorReviewCard(review: ReviewEntity.reviews[index]),
    );
  }
}
