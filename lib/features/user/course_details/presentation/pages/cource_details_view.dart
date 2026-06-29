import 'package:flutter/material.dart';
import 'package:velo/features/user/course_details/presentation/widgets/cource_details_view_body.dart';

class CourceDetailsView extends StatelessWidget {
  const CourceDetailsView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const CourceDetailsViewBody(),
    );
  }
}
