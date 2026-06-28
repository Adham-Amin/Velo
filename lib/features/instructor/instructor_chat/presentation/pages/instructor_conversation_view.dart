import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_chat/presentation/widgets/instructor_conversation_view_body.dart';

class InstructorConversationView extends StatelessWidget {
  const InstructorConversationView({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: const InstructorConversationViewBody(),
    );
  }
}
