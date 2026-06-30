import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/features/instructor/create_course/presentation/widgets/course_description_field.dart';
import 'package:velo/features/instructor/create_course/presentation/widgets/course_price_field.dart';
import 'package:velo/features/instructor/create_course/presentation/widgets/course_title_field.dart';
import 'package:velo/features/instructor/create_course/presentation/widgets/thumbnail_upload.dart';
import 'package:velo/features/instructor/my_courses/domain/entities/instructor_course_entity.dart';

class EditCourseViewBody extends StatefulWidget {
  const EditCourseViewBody({super.key, required this.course});

  final InstructorCourseEntity course;

  @override
  State<EditCourseViewBody> createState() => _CreateCourseViewBodyState();
}

class _CreateCourseViewBodyState extends State<EditCourseViewBody> {
  late final TextEditingController _titleController;
  late final TextEditingController _descController;
  late final TextEditingController _priceController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.course.title);
    _descController = TextEditingController();
    _priceController = TextEditingController(
      text: widget.course.price.toString(),
    );
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
                ThumbnailUpload(onImageSelected: (value) {}),
                SizedBox(height: 24.h),
                CourseTitleField(controller: _titleController),
                CourseDescriptionField(controller: _descController),
                CoursePriceField(controller: _priceController),
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
