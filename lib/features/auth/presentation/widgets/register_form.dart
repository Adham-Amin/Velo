import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/functions/validators.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';
import 'package:velo/core/widgets/custom_text_form_field_password.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  bool get _allFilled =>
      nameController.text.isNotEmpty &&
      emailController.text.isNotEmpty &&
      passwordController.text.isNotEmpty &&
      confirmPasswordController.text.isNotEmpty;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    for (final c in [
      nameController,
      emailController,
      passwordController,
      confirmPasswordController,
    ]) {
      c.addListener(() => setState(() {}));
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
            prefixIcon: Icon(Icons.person),
            labelText: 'Name',
            hintText: 'Enter Your Name',
            validator: Validators.name,
            controller: nameController,
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            prefixIcon: Icon(Icons.email_outlined),
            labelText: 'Email',
            hintText: 'Enter Your Email',
            validator: Validators.email,
            controller: emailController,
          ),
          SizedBox(height: 16.h),
          CustomTextFormFieldPassword(
            validator: Validators.password,
            labelText: 'Password',
            hintText: 'Enter Your Password',
            controller: passwordController,
          ),
          SizedBox(height: 16.h),
          CustomTextFormFieldPassword(
            validator: (value) {
              if (value != passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
            labelText: 'Confirm Password',
            hintText: 'Enter Your Password',
            controller: confirmPasswordController,
          ),
          SizedBox(height: 24.h),
          CustomButton(
            title: 'Register',
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
