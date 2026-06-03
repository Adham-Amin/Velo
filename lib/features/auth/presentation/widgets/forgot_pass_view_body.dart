import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/functions/validators.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';
import 'package:velo/features/auth/presentation/widgets/reset_paasword_header.dart';

class ForgotPassViewBody extends StatefulWidget {
  const ForgotPassViewBody({super.key});

  @override
  State<ForgotPassViewBody> createState() => _ForgotPassViewBodyState();
}

class _ForgotPassViewBodyState extends State<ForgotPassViewBody> {
  late TextEditingController emailController;
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  bool get isValid => emailController.text.isNotEmpty;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    emailController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            ResetPaaswordHeader(
              image: AppAssets.svgsForgotPass,
              title: 'Forgot Password',
              subtitle:
                  'Enter your email address to receive a verification code',
            ),
            SizedBox(height: 32.h),
            CustomTextFormField(
              controller: emailController,
              validator: Validators.email,
              prefixIcon: Icon(Icons.email_outlined),
              labelText: 'Email',
              hintText: 'Enter Your Email',
            ),
            SizedBox(height: 32.h),
            CustomButton(
              title: 'Send',
              onTap: isValid
                  ? () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        context.push(
                          AppRoutes.verifyEmail,
                          extra: emailController.text,
                        );
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    }
                  : null,
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
