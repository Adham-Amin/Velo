import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/functions/validators.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';
import 'package:velo/core/widgets/custom_text_form_field_password.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  bool get _allFilled =>
      emailController.text.isNotEmpty && passwordController.text.isNotEmpty;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    for (final c in [emailController, passwordController]) {
      c.addListener(() => setState(() {}));
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            prefixIcon: Icon(Icons.email_outlined),
            labelText: 'Email',
            hintText: 'Enter Your Email',
            validator: Validators.email,
            controller: emailController,
          ),
          SizedBox(height: 16.h),
          CustomTextFormFieldPassword(
            labelText: 'Password',
            hintText: 'Enter Your Password',
            controller: passwordController,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text('Forgot Password?', style: AppStyles.textRegular12),
            ),
          ),
          CustomButton(
            title: 'Login',
            onTap: _allFilled
                ? () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
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
    );
  }
}
