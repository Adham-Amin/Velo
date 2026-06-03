import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/functions/validators.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/core/widgets/custom_text_form_field_password.dart';
import 'package:velo/features/auth/presentation/widgets/reset_paasword_header.dart';

class ResetPassViewBody extends StatefulWidget {
  const ResetPassViewBody({super.key});

  @override
  State<ResetPassViewBody> createState() => _ResetPassViewBodyState();
}

class _ResetPassViewBodyState extends State<ResetPassViewBody> {
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  bool get isValid =>
      passwordController.text == confirmPasswordController.text &&
      passwordController.text.isNotEmpty;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    passwordController.addListener(() => setState(() {}));
    confirmPasswordController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
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
              image: AppAssets.svgsNewPass,
              title: 'New Password',
              subtitle:
                  'Your new password must be unique from those previously used',
            ),
            SizedBox(height: 32.h),
            CustomTextFormFieldPassword(
              controller: passwordController,
              hintText: 'Enter Your Password',
              labelText: 'Password',
              validator: Validators.password,
            ),
            SizedBox(height: 16.h),
            CustomTextFormFieldPassword(
              controller: confirmPasswordController,
              hintText: 'Confirm Your Password',
              labelText: 'Confirm Password',
              validator: (value) {
                if (value != null && value != passwordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ),
            SizedBox(height: 32.h),
            CustomButton(
              title: 'Done',
              onTap: isValid
                  ? () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        context.push(AppRoutes.doneReset);
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    }
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
