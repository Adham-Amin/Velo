import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/home/presentation/widgets/learning_path_card.dart';

class LearningPathList extends StatelessWidget {
  const LearningPathList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) => const LearningPathCard(),
      ),
    );
  }
}
