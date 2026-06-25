import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class CourseCategoryDropdown extends StatelessWidget {
  final String selected;
  final List<String> categories;
  final ValueChanged<String> onChanged;

  const CourseCategoryDropdown({
    super.key,
    required this.selected,
    required this.categories,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Category', style: AppStyles.textSemiBold14),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.greyBorder),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selected,
              isExpanded: true,
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColors.black,
              ),
              style: AppStyles.textRegular14.copyWith(color: AppColors.black),
              dropdownColor: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              items: categories
                  .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                  .toList(),
              onChanged: (v) => onChanged(v!),
            ),
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
