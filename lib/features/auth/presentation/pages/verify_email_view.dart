import 'package:flutter/material.dart';
import 'package:velo/features/auth/presentation/widgets/verify_email_view_body.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: VerifyEmailViewBody(email: email),
    );
  }
}
