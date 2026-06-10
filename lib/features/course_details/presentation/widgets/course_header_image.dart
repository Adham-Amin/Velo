import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_assets.dart';

class CourseHeaderImage extends StatelessWidget {
  const CourseHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.imagesCourse);
  }
}
