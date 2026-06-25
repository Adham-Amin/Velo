import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/user/course_details/presentation/widgets/course_header_image.dart';
import 'package:velo/features/user/course_details/presentation/widgets/course_info_section.dart';
import 'package:velo/features/user/course_details/presentation/widgets/course_tab_content.dart';
import 'package:velo/features/user/course_details/presentation/widgets/enroll_button.dart';

class CourceDetailsViewBody extends StatelessWidget {
  const CourceDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CourseHeaderImage(),
            const CourseInfoSection(),
            TabBar(
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.dark,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: AppColors.primary, width: 4.w),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 16.w),
              dividerColor: Colors.transparent,
              tabs: [
                Tab(child: Text('About', style: AppStyles.textSemiBold16)),
                Tab(child: Text('Lessons', style: AppStyles.textSemiBold16)),
              ],
            ),
            SizedBox(height: 24.h),
            CourseTabContent(),
            SizedBox(height: 24.h),
            EnrollButton(),
          ],
        ),
      ),
    );
  }
}
