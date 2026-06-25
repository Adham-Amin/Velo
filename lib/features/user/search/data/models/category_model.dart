import 'package:velo/core/utils/app_assets.dart';

class CategoryModel {
  final String title;
  final String image;
  CategoryModel({required this.title, required this.image});

  static List<CategoryModel> categories = [
    CategoryModel(title: 'Design', image: AppAssets.svgsCategory),
    CategoryModel(title: 'Marketing', image: AppAssets.svgsCategory),
    CategoryModel(title: 'Data Science', image: AppAssets.svgsCategory),
    CategoryModel(title: 'Business', image: AppAssets.svgsCategory),
    CategoryModel(title: 'Languages', image: AppAssets.svgsCategory),
    CategoryModel(title: 'Programming', image: AppAssets.svgsCategory),
  ];
}
