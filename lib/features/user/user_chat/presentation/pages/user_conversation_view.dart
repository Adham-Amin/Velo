import 'package:flutter/material.dart';
import 'package:velo/features/user/user_chat/presentation/widgets/user_conversation_view_body.dart';

class UserConversationView extends StatelessWidget {
  const UserConversationView({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: const UserConversationViewBody(),
    );
  }
}
