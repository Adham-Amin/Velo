import 'package:flutter/material.dart';
import 'package:velo/features/user/change_pass/presentation/widgets/change_pass_view_body.dart';

class ChangePassView extends StatelessWidget {
  const ChangePassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Password')),
      body: const ChangePassViewBody(),
    );
  }
}
