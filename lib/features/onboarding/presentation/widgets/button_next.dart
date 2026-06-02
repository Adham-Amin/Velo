import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/services/shared_preferences_service.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/features/onboarding/data/modelss/onboarding_model.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({
    super.key,
    required this.currentPage,
    required this.pageController,
  });

  final int currentPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title: currentPage == OnboardingModel.pages.length - 1 ? 'Login' : 'Next',
      onTap: currentPage == OnboardingModel.pages.length - 1
          ? () {
              Prefs.setBool('SeenOn', true);
              context.pushReplacement(AppRoutes.login);
            }
          : () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
    );
  }
}
