import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:velo/core/routing/app_routes.dart';
import 'package:velo/features/instructor/instructor_chat/domain/entities/chat_contact_entity.dart';
import 'package:velo/features/instructor/instructor_chat/presentation/widgets/chat_tile.dart';

class InstructorChatList extends StatelessWidget {
  const InstructorChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => ChatTile(
          contact: ChatContactEntity.contacts[index],
          onTap: () => context.push(
            AppRoutes.instructorConversation,
            extra: ChatContactEntity.contacts[index].name,
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
        itemCount: ChatContactEntity.contacts.length,
      ),
    );
  }
}
