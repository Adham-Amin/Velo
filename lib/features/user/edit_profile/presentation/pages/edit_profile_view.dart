import 'package:flutter/material.dart';
import 'package:velo/features/user/edit_profile/presentation/widgets/edit_profile_view_body.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: const EditProfileViewBody(),
    );
  }
}
