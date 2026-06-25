import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/features/instructor/create_cource/presentation/widgets/course_category_dropdown.dart';
import 'package:velo/features/instructor/create_cource/presentation/widgets/course_description_field.dart';
import 'package:velo/features/instructor/create_cource/presentation/widgets/course_difficulty_selector.dart';
import 'package:velo/features/instructor/create_cource/presentation/widgets/course_price_field.dart';
import 'package:velo/features/instructor/create_cource/presentation/widgets/course_title_field.dart';
import 'package:velo/features/instructor/create_cource/presentation/widgets/thumbnail_upload.dart';

class CreateCourseViewBody extends StatefulWidget {
  const CreateCourseViewBody({super.key});

  @override
  State<CreateCourseViewBody> createState() => _CreateCourseViewBodyState();
}

class _CreateCourseViewBodyState extends State<CreateCourseViewBody> {
  late final TextEditingController _titleController;
  late final TextEditingController _descController;
  late final TextEditingController _priceController;

  String _selectedCategory = 'Design';
  String _selectedDifficulty = 'Beginner';

  static const _categories = [
    'Design',
    'Development',
    'Marketing',
    'Business',
    'Photography',
  ];

  static const _difficulties = ['Beginner', 'Intermediate', 'Advanced'];

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _descController = TextEditingController();
    _priceController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h),
                const ThumbnailUpload(),
                SizedBox(height: 24.h),
                CourseTitleField(controller: _titleController),
                CourseDescriptionField(controller: _descController),
                CoursePriceField(controller: _priceController),
                CourseCategoryDropdown(
                  selected: _selectedCategory,
                  categories: _categories,
                  onChanged: (v) => setState(() => _selectedCategory = v),
                ),
                CourseDifficultySelector(
                  selected: _selectedDifficulty,
                  difficulties: _difficulties,
                  onChanged: (v) => setState(() => _selectedDifficulty = v),
                ),
                SizedBox(height: 24.h),
                CustomButton(title: 'Create Course', onTap: () {}),
                SizedBox(height: 32.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
