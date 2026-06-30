import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';
import 'package:velo/features/instructor/instructor_chat/domain/entities/chat_message_entity.dart';
import 'package:velo/features/instructor/instructor_chat/presentation/widgets/message_bubble.dart';

class UserConversationViewBody extends StatefulWidget {
  const UserConversationViewBody({super.key});

  @override
  State<UserConversationViewBody> createState() =>
      _InstructorConversationViewBodyState();
}

class _InstructorConversationViewBodyState
    extends State<UserConversationViewBody> {
  late TextEditingController _messageController;
  late ScrollController _scrollController;

  @override
  void initState() {
    _messageController = TextEditingController();
    _messageController.addListener(() => setState(() {}));
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isEmpty) return;

    final now = TimeOfDay.now();
    final hour = now.hourOfPeriod == 0 ? 12 : now.hourOfPeriod;
    final minute = now.minute.toString().padLeft(2, '0');
    final period = now.period == DayPeriod.am ? 'AM' : 'PM';

    setState(() {
      ChatMessageEntity.messages.add(
        ChatMessageEntity(
          text: text,
          time: '$hour:$minute $period',
          isMe: true,
        ),
      );
    });

    _messageController.clear();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          Expanded(
            child: ListView.separated(
              controller: _scrollController,
              itemCount: ChatMessageEntity.messages.length,
              separatorBuilder: (context, index) => SizedBox(height: 12.h),
              itemBuilder: (context, index) =>
                  MessageBubble(message: ChatMessageEntity.messages[index]),
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  controller: _messageController,
                  hintText: 'Type your message...',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.image_outlined),
                    onPressed: () {},
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.send,
                  color: _messageController.text.isEmpty
                      ? AppColors.greyBorder
                      : AppColors.primary,
                ),
                onPressed: _sendMessage,
              ),
            ],
          ),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}
