import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      filled: true,
      fillColor: AppColors.white,
      hintText: 'Search',
      prefixIcon: Icon(Icons.search, color: AppColors.greyBorder),
      suffixIcon: IconButton(
        onPressed: () => context.push(AppRoutes.searchFilter),
        icon: Icon(Icons.tune, color: AppColors.dark),
      ),
    );
  }
}
