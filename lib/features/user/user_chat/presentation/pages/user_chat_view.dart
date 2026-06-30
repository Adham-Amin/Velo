import 'package:flutter/material.dart';
import 'package:velo/features/user/user_chat/presentation/widgets/user_chat_view_body.dart';

class UserChatView extends StatelessWidget {
  const UserChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      body: const UserChatViewBody(),
    );
  }
}
