import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_chat/presentation/widgets/instructor_chat_view_body.dart';

class InstructorChatView extends StatelessWidget {
  const InstructorChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      body: const InstructorChatViewBody(),
    );
  }
}
