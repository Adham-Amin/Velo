import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/search/presentation/widgets/search_categories_grid.dart';
import 'package:velo/features/search/presentation/widgets/search_header.dart';
import 'package:velo/features/search/presentation/widgets/search_recent_chips.dart';
import 'package:velo/features/search/presentation/widgets/search_top_instructors.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchHeader(),
          SizedBox(height: 16.h),
          const SearchRecentChips(),
          SizedBox(height: 16.h),
          const SearchCategoriesGrid(),
          SizedBox(height: 16.h),
          const SearchTopInstructors(),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
