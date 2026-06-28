import 'package:flutter/material.dart';
import 'package:velo/features/instructor/enrollments/presentation/widgets/enrollments_view_body.dart';

class EnrollmentsView extends StatelessWidget {
  const EnrollmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enrollments')),
      body: const EnrollmentsViewBody(),
    );
  }
}
