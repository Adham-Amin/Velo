import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/features/home/presentation/widgets/label_and_see.dart';
import 'package:velo/features/search/data/models/Instructor_model.dart';
import 'package:velo/features/search/presentation/widgets/instructor_item.dart';

class SearchTopInstructors extends StatelessWidget {
  const SearchTopInstructors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelAndSee(title: 'Top Instructors', onTap: () {}),
        SizedBox(height: 12.h),
        SizedBox(
          height: 125.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: InstructorModel.instructors.length,
            separatorBuilder: (_, _) => SizedBox(width: 16.w),
            itemBuilder: (context, index) {
              return InstructorItem(
                onTap: () => context.push(AppRoutes.instructor),
                instructor: InstructorModel.instructors[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
