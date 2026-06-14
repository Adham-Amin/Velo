import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/course_details/presentation/widgets/cource_details_view_body.dart';

class CourceDetailsView extends StatelessWidget {
  const CourceDetailsView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text(title)),
      body: const CourceDetailsViewBody(),
    );
  }
}
