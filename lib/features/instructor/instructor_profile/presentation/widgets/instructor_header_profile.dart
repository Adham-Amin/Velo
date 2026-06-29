import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class InstructorHeaderProfile extends StatelessWidget {
  const InstructorHeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 50.w,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=11'),
          ),
          SizedBox(height: 16.h),
          Text('Adham Amin', style: AppStyles.textBold20),
          SizedBox(height: 4.h),
          Text(
            'UI/UX Design Instructor',
            style: AppStyles.textRegular14.copyWith(
              color: AppColors.greyBorder,
            ),
          ),
        ],
      ),
    );
  }
}
