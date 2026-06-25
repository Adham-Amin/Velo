import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class CourseDifficultySelector extends StatelessWidget {
  final String selected;
  final List<String> difficulties;
  final ValueChanged<String> onChanged;

  const CourseDifficultySelector({
    super.key,
    required this.selected,
    required this.difficulties,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Difficulty', style: AppStyles.textSemiBold14),
        const SizedBox(height: 4),
        Row(
          spacing: 12.w,
          children: difficulties.map((level) {
            final isSelected = selected == level;
            return Expanded(
              child: GestureDetector(
                onTap: () => onChanged(level),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primary
                        : AppColors.background,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.greyBorder,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    level,
                    style: AppStyles.textRegular14.copyWith(
                      color: isSelected ? AppColors.white : AppColors.black,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
