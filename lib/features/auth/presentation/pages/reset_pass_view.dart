import 'package:flutter/material.dart';
import 'package:velo/features/auth/presentation/widgets/reset_pass_view_body.dart';

class ResetPassView extends StatelessWidget {
  const ResetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: const ResetPassViewBody(),
    );
  }
}
