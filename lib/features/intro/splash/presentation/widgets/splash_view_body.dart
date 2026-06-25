import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/services/shared_preferences_service.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1, milliseconds: 500),
    )..repeat(reverse: true);

    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOut,
    );

    waitAnimationAndNavigate();
    super.initState();
  }

  void waitAnimationAndNavigate() async {
    Timer(const Duration(seconds: 2), () {
      if (Prefs.getBool('SeenOn')) {
        context.go(AppRoutes.main);
      } else {
        context.go(AppRoutes.onboarding);
      }
    });

    // if (Prefs.getUser() != null) {
    //       context.go(AppRoutes.main);
    //     } else {
    //       context.go(AppRoutes.login);
    //     }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: animation,
        child: Image.asset(AppAssets.imagesLogo, width: 200.w, height: 200.w),
      ),
    );
  }
}
