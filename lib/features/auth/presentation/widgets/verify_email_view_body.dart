import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/features/auth/presentation/widgets/pin_code.dart';
import 'package:velo/features/auth/presentation/widgets/reset_paasword_header.dart';

class VerifyEmailViewBody extends StatefulWidget {
  const VerifyEmailViewBody({super.key, required this.email});

  final String email;

  @override
  State<VerifyEmailViewBody> createState() => _VerifyEmailViewBodyState();
}

class _VerifyEmailViewBodyState extends State<VerifyEmailViewBody> {
  late TextEditingController codeController;

  bool get isValid => codeController.text.length == 4;

  @override
  void initState() {
    codeController = TextEditingController();
    codeController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          ResetPaaswordHeader(
            image: AppAssets.svgsVerifyEmail,
            title: 'Verify Your Email',
            subtitle: 'We sent a 4-digit code to ${widget.email}',
          ),
          SizedBox(height: 32.h),
          PinCode(onCodeChanged: codeController),
          SizedBox(height: 32.h),
          CustomButton(
            title: 'Verify',
            onTap: isValid
                ? () {
                    context.go(AppRoutes.newPass);
                  }
                : null,
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
