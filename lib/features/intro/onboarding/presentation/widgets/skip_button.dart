import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/features/intro/onboarding/data/modelss/onboarding_model.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.pageController,
    required this.currentPage,
  });

  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentPage != OnboardingModel.pages.length - 1,
      maintainState: true,
      maintainAnimation: true,
      maintainSize: true,
      child: CustomButton(
        title: 'Skip',
        backgroundColor: AppColors.background,
        colorText: AppColors.black,
        onTap: () {
          pageController.jumpToPage(OnboardingModel.pages.length - 1);
        },
      ),
    );
  }
}
