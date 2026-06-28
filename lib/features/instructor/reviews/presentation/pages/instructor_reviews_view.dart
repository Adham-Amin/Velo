import 'package:flutter/material.dart';
import 'package:velo/features/instructor/reviews/presentation/widgets/instructor_reviews_view_body.dart';

class InstructorReviewsView extends StatelessWidget {
  const InstructorReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reviews')),
      body: const InstructorReviewsViewBody(),
    );
  }
}
