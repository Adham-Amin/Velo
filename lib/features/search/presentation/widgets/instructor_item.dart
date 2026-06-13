import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/search/data/models/Instructor_model.dart';

class InstructorItem extends StatelessWidget {
  const InstructorItem({
    super.key,
    required this.onTap,
    required this.instructor,
  });

  final VoidCallback onTap;
  final InstructorModel instructor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.r),
        onTap: onTap,
        child: Container(
          width: 120.w,
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: AppColors.greyBorder),
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 28.w,
                backgroundImage: AssetImage(instructor.image),
              ),
              SizedBox(height: 8.h),
              Text(
                instructor.name,
                style: AppStyles.textSemiBold14,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.h),
              Text(
                instructor.specialty,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.textRegular12.copyWith(
                  color: AppColors.greyBorder,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
