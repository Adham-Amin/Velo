import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/functions/validators.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';
import 'package:velo/features/instructor/instructor_course_details/domain/entities/lesson_entity.dart';
import 'package:velo/features/user/home/presentation/widgets/label_and_see.dart';

class AddLessonViewBody extends StatefulWidget {
  const AddLessonViewBody({super.key, this.lesson});

  final LessonEntity? lesson;

  @override
  State<AddLessonViewBody> createState() => _AddLessonViewBodyState();
}

class _AddLessonViewBodyState extends State<AddLessonViewBody> {
  late TextEditingController _titleController,
      _descController,
      _linkController,
      _durationController;

  @override
  void initState() {
    _titleController = TextEditingController(text: widget.lesson?.title);
    _descController = TextEditingController();
    _linkController = TextEditingController();
    _durationController = TextEditingController(
      text: widget.lesson?.duration.toString(),
    );
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    _linkController.dispose();
    _durationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  LabelAndSee(title: 'Lesson Information'),
                  SizedBox(height: 24.h),
                  CustomTextFormField(
                    hintText: 'Title',
                    controller: _titleController,
                    prefixIcon: const Icon(Icons.title),
                    validator: Validators.name,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    validator: Validators.name,
                    hintText: 'Description',
                    controller: _descController,
                    maxLines: 3,
                    prefixIcon: const Icon(Icons.description),
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    hintText: 'Link to video',
                    controller: _linkController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Link is required';
                      }
                      return null;
                    },
                    prefixIcon: const Icon(Icons.link),
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    hintText: 'Duration',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Duration is required';
                      }
                      return null;
                    },
                    controller: _durationController,
                    prefixIcon: const Icon(Icons.timer),
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            title: 'Save Lesson',
            onTap: widget.lesson != null
                ? () {
                    context.pop();
                    debugPrint('Edit lesson');
                  }
                : () {
                    context.pop();
                    debugPrint('Add lesson');
                  },
          ),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}
