import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/user/search/presentation/widgets/search_view_body.dart';

enum SearchScreenState { defaultView, suggestions, results, filter }

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
