import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class CustomInstructorBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomInstructorBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          _item(index: 0, icon: Icons.dashboard_outlined, label: 'Dashboard'),
          _item(
            index: 1,
            icon: Icons.video_collection_outlined,
            label: 'My courses',
          ),
          _item(index: 2, icon: Icons.chat_bubble_outline, label: 'Chat'),
          _item(index: 3, icon: Icons.person_outline, label: 'Profile'),
        ],
      ),
    );
  }

  Widget _item({
    required int index,
    required IconData icon,
    required String label,
  }) {
    final bool isSelected = currentIndex == index;
    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: isSelected ? 70 : 0,
              height: 6,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Icon(
              icon,
              color: isSelected ? AppColors.primary : AppColors.greyBorder,
            ),
            SizedBox(height: 12.h),
            Text(
              label,
              style: AppStyles.textMedium12.copyWith(
                color: isSelected ? AppColors.primary : AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
