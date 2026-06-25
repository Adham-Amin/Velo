import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/user/search/presentation/widgets/search_categories_grid.dart';
import 'package:velo/features/user/search/presentation/widgets/search_recent_chips.dart';
import 'package:velo/features/user/search/presentation/widgets/search_top_instructors.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SearchRecentChips(),
            SizedBox(height: 16.h),
            const SearchCategoriesGrid(),
            SizedBox(height: 16.h),
            const SearchTopInstructors(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
