import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/features/search/data/models/filter_model.dart';

class SearchFilterViewBody extends StatefulWidget {
  const SearchFilterViewBody({super.key});

  @override
  State<SearchFilterViewBody> createState() => _SearchFilterViewBodyState();
}

class _SearchFilterViewBodyState extends State<SearchFilterViewBody> {
  int _selectedPriceIndex = 0;
  int _selectedLevelIndex = 0;
  int _selectedRatingIndex = 0;
  int _selectedCategoryIndex = 0;
  int _selectedHoursIndex = 0;

  void _resetFilters() {
    setState(() {
      _selectedPriceIndex = 0;
      _selectedLevelIndex = 0;
      _selectedRatingIndex = 0;
      _selectedCategoryIndex = 0;
      _selectedHoursIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          _FilterHeader(onTap: _resetFilters),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.h),
                  _FilterOptionsSection(
                    title: 'Price',
                    options: FilterModel.priceOptions,
                    selectedIndex: _selectedPriceIndex,
                    onSelected: (i) => setState(() => _selectedPriceIndex = i),
                  ),
                  SizedBox(height: 24.h),
                  _FilterOptionsSection(
                    title: 'Level',
                    options: FilterModel.levelOptions,
                    selectedIndex: _selectedLevelIndex,
                    onSelected: (i) => setState(() => _selectedLevelIndex = i),
                  ),
                  SizedBox(height: 24.h),
                  _RatingSection(
                    options: FilterModel.ratingOptions,
                    selectedIndex: _selectedRatingIndex,
                    onSelected: (i) => setState(() => _selectedRatingIndex = i),
                  ),
                  SizedBox(height: 24.h),
                  _FilterOptionsSection(
                    title: 'Category',
                    options: FilterModel.categoryOptions,
                    selectedIndex: _selectedCategoryIndex,
                    onSelected: (i) =>
                        setState(() => _selectedCategoryIndex = i),
                  ),
                  SizedBox(height: 24.h),
                  _FilterOptionsSection(
                    title: 'Hours',
                    options: FilterModel.durationOptions,
                    selectedIndex: _selectedHoursIndex,
                    onSelected: (i) => setState(() => _selectedHoursIndex = i),
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ),
          CustomButton(title: 'Show Results', onTap: () {}),
        ],
      ),
    );
  }
}

class _FilterHeader extends StatelessWidget {
  const _FilterHeader({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.dark,
            size: 24.sp,
          ),
        ),
        const Spacer(),
        Text('Filter', style: AppStyles.textSemiBold18),
        const Spacer(),
        TextButton(
          onPressed: onTap,
          child: Text(
            'Reset',
            style: AppStyles.textSemiBold14.copyWith(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}

class _FilterOptionsSection extends StatelessWidget {
  final String title;
  final List<FilterModel> options;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const _FilterOptionsSection({
    required this.title,
    required this.options,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.textRegular14),
        SizedBox(height: 12.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: List.generate(options.length, (index) {
            final isSelected = index == selectedIndex;
            return _FilterChip(
              label: options[index].label,
              isSelected: isSelected,
              onTap: () => onSelected(index),
            );
          }),
        ),
      ],
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: isSelected
              ? null
              : Border.all(color: const Color(0xff5B6671)),
        ),
        child: Text(
          label,
          style: AppStyles.textSemiBold12.copyWith(
            color: isSelected ? const Color(0xffDFDDFB) : AppColors.dark,
          ),
        ),
      ),
    );
  }
}

class _RatingSection extends StatelessWidget {
  final List<FilterModel> options;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const _RatingSection({
    required this.options,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Rating', style: AppStyles.textRegular14),
        SizedBox(height: 12.h),
        ...List.generate(options.length, (index) {
          return _RatingOption(
            label: options[index].label,
            isSelected: selectedIndex == index,
            onTap: () => onSelected(index),
          );
        }),
      ],
    );
  }
}

class _RatingOption extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _RatingOption({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        child: Row(
          children: [
            Icon(
              isSelected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              size: 24.sp,
              color: isSelected ? AppColors.primary : AppColors.greyBorder,
            ),
            SizedBox(width: 8.w),
            Text(label, style: AppStyles.textRegular12),
          ],
        ),
      ),
    );
  }
}
