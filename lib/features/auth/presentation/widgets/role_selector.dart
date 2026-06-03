import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/auth/presentation/widgets/role_button.dart';

class RoleSelector extends StatefulWidget {
  const RoleSelector({super.key, required this.selectedIndex});

  final Function(int) selectedIndex;

  @override
  State<RoleSelector> createState() => _RoleSelectorState();
}

class _RoleSelectorState extends State<RoleSelector> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.background,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: RoleButton(
              title: 'Login',
              isActive: currentIndex == 0,
              onTap: () {
                setState(() {
                  currentIndex = 0;
                  widget.selectedIndex(0);
                });
              },
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: RoleButton(
              title: 'Register',
              isActive: currentIndex == 1,
              onTap: () {
                setState(() {
                  widget.selectedIndex(1);
                  currentIndex = 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
