import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/user/search/presentation/widgets/quick_filter_chip.dart';

class QuickFilterList extends StatefulWidget {
  const QuickFilterList({super.key});

  static List<String> tags = ['Free', 'Under 2 Hours', '4.5 & Up', 'Beginner'];

  @override
  State<QuickFilterList> createState() => _QuickFilterListState();
}

class _QuickFilterListState extends State<QuickFilterList> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 8.w,
        children: List.generate(
          QuickFilterList.tags.length,
          (index) => QuickFilterChip(
            onTap: () => setState(() => currentIndex = index),
            label: QuickFilterList.tags[index],
            selected: index == currentIndex,
          ),
        ).toList(),
      ),
    );
  }
}
