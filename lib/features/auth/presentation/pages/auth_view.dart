import 'package:flutter/material.dart';
import 'package:velo/features/auth/presentation/widgets/auth_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: AuthViewBody()));
  }
}
