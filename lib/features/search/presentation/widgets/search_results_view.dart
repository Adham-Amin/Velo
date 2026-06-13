import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/home/presentation/widgets/course_card_horizontal.dart';
import 'package:velo/features/search/presentation/widgets/quick_filter_list.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuickFilterList(),
        SizedBox(height: 24.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('4 Results', style: AppStyles.textSemiBold18),
            Text(
              'Sorted by Relevance',
              style: AppStyles.textRegular14.copyWith(color: AppColors.dark),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Expanded(
          child: ListView.separated(
            itemCount: 6,
            separatorBuilder: (_, _) => SizedBox(height: 12.h),
            itemBuilder: (context, index) {
              return CourseCardHorizontal();
            },
          ),
        ),
      ],
    );
  }
}
