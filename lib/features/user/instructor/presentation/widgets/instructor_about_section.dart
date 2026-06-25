import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/user/home/presentation/widgets/label_and_see.dart';
import 'package:velo/features/user/instructor/presentation/widgets/statistic_item.dart';

class InstructorAboutSection extends StatelessWidget {
  const InstructorAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            StatisticItem(label: 'Students', value: '12.5K'),
            Container(height: 60.h, width: 1.w, color: AppColors.grey),
            StatisticItem(label: 'Rating', value: '4.8'),
            Container(height: 60.h, width: 1.w, color: AppColors.grey),
            StatisticItem(label: 'Courses', value: '12'),
          ],
        ),
        SizedBox(height: 24.h),
        LabelAndSee(title: 'About'),
        SizedBox(height: 12.h),
        Text(
          "With over 10 years of experience in UI/UX design, I've helped build scalable design systems for top tech companies. Passionate about teaching practical, industry-ready skills to the next generation of designers.",
          style: AppStyles.textRegular14,
        ),
      ],
    );
  }
}
