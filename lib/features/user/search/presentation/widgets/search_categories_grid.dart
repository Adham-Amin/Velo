import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/user/home/presentation/widgets/label_and_see.dart';
import 'package:velo/features/user/search/data/models/category_model.dart';
import 'package:velo/features/user/search/presentation/widgets/category_item.dart';

class SearchCategoriesGrid extends StatelessWidget {
  const SearchCategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelAndSee(title: 'Top Categories', onTap: () {}),
        SizedBox(height: 12.h),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
            childAspectRatio: 1.0,
          ),
          itemCount: CategoryModel.categories.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              onTap: () {},
              category: CategoryModel.categories[index],
            );
          },
        ),
      ],
    );
  }
}
