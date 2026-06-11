import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/home/presentation/widgets/course_card_horizontal.dart';

class CheckoutList extends StatelessWidget {
  const CheckoutList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: 3,
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
        itemBuilder: (context, index) => const CourseCardHorizontal(),
      ),
    );
  }
}
