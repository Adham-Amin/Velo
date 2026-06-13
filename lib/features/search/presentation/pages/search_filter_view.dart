import 'package:flutter/material.dart';
import 'package:velo/features/search/presentation/widgets/search_filter_view_body.dart';

class SearchFilterView extends StatelessWidget {
  const SearchFilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SearchFilterViewBody()));
  }
}
