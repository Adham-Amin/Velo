import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/features/intro/onboarding/data/modelss/onboarding_model.dart';
import 'package:velo/features/intro/onboarding/presentation/widgets/button_next.dart';
import 'package:velo/features/intro/onboarding/presentation/widgets/onbording_item.dart';
import 'package:velo/features/intro/onboarding/presentation/widgets/skip_button.dart';

class OnbordingViewBody extends StatefulWidget {
  const OnbordingViewBody({super.key});

  @override
  State<OnbordingViewBody> createState() => _OnbordingViewBodyState();
}

class _OnbordingViewBodyState extends State<OnbordingViewBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 6,
            child: PageView.builder(
              controller: pageController,
              itemCount: OnboardingModel.pages.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) =>
                  OnbordingItem(item: OnboardingModel.pages[index]),
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: OnboardingModel.pages.length,
            effect: ExpandingDotsEffect(
              dotWidth: 12.w,
              dotHeight: 4.h,
              expansionFactor: 4,
              dotColor: AppColors.grey,
              activeDotColor: AppColors.primary,
            ),
          ),
          SizedBox(height: 16.w),
          ButtonNext(currentPage: currentPage, pageController: pageController),
          SizedBox(height: 16.w),
          SkipButton(currentPage: currentPage, pageController: pageController),
        ],
      ),
    );
  }
}
