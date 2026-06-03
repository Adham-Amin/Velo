import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/features/auth/presentation/widgets/header_auth.dart';
import 'package:velo/features/auth/presentation/widgets/login_form.dart';
import 'package:velo/features/auth/presentation/widgets/register_form.dart';
import 'package:velo/features/auth/presentation/widgets/role_selector.dart';
import 'package:velo/features/auth/presentation/widgets/social_auth.dart';

class AuthViewBody extends StatefulWidget {
  const AuthViewBody({super.key});

  @override
  State<AuthViewBody> createState() => _AuthViewBodyState();
}

class _AuthViewBodyState extends State<AuthViewBody> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 60.h),
          HeaderAuth(
            title: selectedIndex == 0 ? 'Welcome back!' : 'Join Velo Today',
            subtitle: selectedIndex == 0
                ? 'Login to continue your journey'
                : 'Start your journey to success',
          ),
          SizedBox(height: 24.h),
          RoleSelector(
            selectedIndex: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          SizedBox(height: 24.h),
          selectedIndex == 0 ? const LoginForm() : const RegisterForm(),
          SizedBox(height: 24.h),
          SocialAuth(),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
