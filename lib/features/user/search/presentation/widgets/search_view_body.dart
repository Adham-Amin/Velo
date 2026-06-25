import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/user/search/presentation/widgets/search_header.dart';
import 'package:velo/features/user/search/presentation/widgets/search_idle.dart';

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
          SearchIdle(),
        ],
      ),
    );
  }
}
