import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/features/home/presentation/widgets/course_card_vertical.dart';
import 'package:velo/features/home/presentation/widgets/label_and_see.dart';

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
            Container(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 32.h,
                top: 24.h,
              ),
              color: AppColors.background,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price', style: AppStyles.textRegular14),
                        Text(r'$30.99', style: AppStyles.textSemiBold20),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CustomButton(title: 'Enroll Now', onTap: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseTabContent extends StatefulWidget {
  const CourseTabContent({super.key});

  @override
  State<CourseTabContent> createState() => CourseTabContentState();
}

class CourseTabContentState extends State<CourseTabContent> {
  @override
  Widget build(BuildContext context) {
    final controller = DefaultTabController.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return switch (controller.index) {
          1 => const CourseLessonsTab(),
          _ => const CourseAboutTab(),
        };
      },
    );
  }
}

class CourseHeaderImage extends StatelessWidget {
  const CourseHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.imagesCourse);
  }
}

class CourseMetaRow extends StatelessWidget {
  const CourseMetaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: AppColors.yellow, size: 16.sp),
        SizedBox(width: 4.w),
        Text('4.8', style: AppStyles.textRegular14),
        SizedBox(width: 4.w),
        Text(
          '(20)',
          style: AppStyles.textRegular12.copyWith(color: AppColors.dark),
        ),
        SizedBox(width: 12.w),
        Icon(Icons.person, color: AppColors.dark, size: 16.sp),
        SizedBox(width: 4.w),
        Text(
          '12.5k Students',
          style: AppStyles.textRegular12.copyWith(color: AppColors.dark),
        ),
        SizedBox(width: 12.w),
        Icon(Icons.access_time, color: AppColors.dark, size: 16.sp),
        SizedBox(width: 4.w),
        Text(
          '6h Total Time',
          style: AppStyles.textRegular12.copyWith(color: AppColors.dark),
        ),
      ],
    );
  }
}

class InstructorRow extends StatelessWidget {
  const InstructorRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24.w,
          backgroundImage: AssetImage(AppAssets.imagesUserImage),
        ),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Instructor',
              style: AppStyles.textRegular14.copyWith(color: AppColors.dark),
            ),
            Text('John Doe', style: AppStyles.textMedium16),
          ],
        ),
      ],
    );
  }
}

class CourseInfoSection extends StatelessWidget {
  const CourseInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Advanced UI/UX Design', style: AppStyles.textSemiBold20),
          SizedBox(height: 12.h),
          const CourseMetaRow(),
          SizedBox(height: 12.h),
          const InstructorRow(),
        ],
      ),
    );
  }
}

class WhatYouLearnSection extends StatelessWidget {
  const WhatYouLearnSection({super.key});

  @override
  Widget build(BuildContext context) {
    const items = [
      'Master Figma auto-layout and component',
      'Build complete design system from scratch',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text("What you'll learn", style: AppStyles.textSemiBold18),
        ),
        SizedBox(height: 12.h),
        ...items.map(
          (item) => Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 12.h),
            child: Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: AppColors.primary,
                  size: 16.sp,
                ),
                SizedBox(width: 12.w),
                Text(item, style: AppStyles.textRegular14),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CourseReviewsSection extends StatelessWidget {
  const CourseReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      decoration: BoxDecoration(color: AppColors.primary.withValues(alpha: .3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelAndSee(title: 'Reviews', onTap: () {}),
          SizedBox(height: 12.h),
          SizedBox(
            height: 180.h,
            child: ListView.separated(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 12.w),
              itemBuilder: (context, index) => const ReviewItem(),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24.w,
                backgroundImage: AssetImage(AppAssets.imagesUserImage),
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('John Doe', style: AppStyles.textMedium16),
                  Row(
                    children: List.generate(
                      5,
                      (_) => Icon(
                        Icons.star,
                        color: AppColors.yellow,
                        size: 16.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            'A must-watch for any mobile developer or UX beginner. The practical exercises make planning app screens so much easier.',
            style: AppStyles.textRegular14,
          ),
        ],
      ),
    );
  }
}

class CourseAboutTab extends StatelessWidget {
  const CourseAboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WhatYouLearnSection(),
        SizedBox(height: 24.h),
        const CourseReviewsSection(),
        SizedBox(height: 24.h),
        SimilarCoursesSection(),
      ],
    );
  }
}

class SimilarCoursesSection extends StatelessWidget {
  const SimilarCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          LabelAndSee(title: 'Similar Courses', onTap: () {}),
          SizedBox(height: 12.h),
          SimilarCoursesList(),
        ],
      ),
    );
  }
}

class SimilarCoursesList extends StatelessWidget {
  const SimilarCoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 295.h,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) => CourseCardVertical(),
      ),
    );
  }
}

class CourseLessonsTab extends StatelessWidget {
  const CourseLessonsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('24 Lessons', style: AppStyles.textSemiBold18),
          SizedBox(height: 12.h),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => LessonItem(isEnabled: index == 0),
            separatorBuilder: (context, index) => SizedBox(height: 12.h),
            itemCount: 6,
          ),
        ],
      ),
    );
  }
}

class LessonItem extends StatelessWidget {
  const LessonItem({super.key, this.isEnabled = false});

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28.w,
            backgroundColor: AppColors.primary.withValues(alpha: .3),
            child: Text('1', style: AppStyles.textMedium20),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Why Using Figma', style: AppStyles.textSemiBold14),
                SizedBox(height: 4.h),
                Text(
                  '5 min',
                  style: AppStyles.textSemiBold14.copyWith(
                    color: AppColors.greyBorder,
                  ),
                ),
              ],
            ),
          ),
          isEnabled
              ? CircleAvatar(
                  radius: 22.w,
                  backgroundColor: AppColors.primary,
                  child: SvgPicture.asset(AppAssets.svgsPlay),
                )
              : Icon(Icons.lock, color: AppColors.greyBorder, size: 24.sp),
        ],
      ),
    );
  }
}
