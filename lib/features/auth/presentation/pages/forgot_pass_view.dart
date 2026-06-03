import 'package:flutter/material.dart';
import 'package:velo/features/auth/presentation/widgets/forgot_pass_view_body.dart';

class ForgotPassView extends StatelessWidget {
  const ForgotPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: const ForgotPassViewBody());
  }
}
