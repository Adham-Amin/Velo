import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/user/search/presentation/widgets/search_recent_chips_item.dart';

class SearchRecentChips extends StatelessWidget {
  const SearchRecentChips({super.key});

  static const List<String> _recentSearches = [
    'Claude Code',
    'Ui/UX Design',
    'Business',
    'Ai Machine',
    'Web Development',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Recent Searches', style: AppStyles.textSemiBold16),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Clear all',
                style: AppStyles.textSemiBold14.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: _recentSearches
              .map((label) => SearchRecentChipsItem(label: label, onTap: () {}))
              .toList(),
        ),
      ],
    );
  }
}
