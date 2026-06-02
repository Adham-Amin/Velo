import 'package:flutter/material.dart';
import 'package:velo/features/onboarding/presentation/widgets/onbording_view_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const OnbordingViewBody()));
  }
}
