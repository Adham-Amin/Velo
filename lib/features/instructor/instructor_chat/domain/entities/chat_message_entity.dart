class ChatMessageEntity {
  final String text;
  final String time;
  final bool isMe;

  const ChatMessageEntity({
    required this.text,
    required this.time,
    required this.isMe,
  });

  static List<ChatMessageEntity> messages = [
    const ChatMessageEntity(
      text: 'Hi! I have a question about lesson 3.',
      time: '9:01 AM',
      isMe: false,
    ),
    const ChatMessageEntity(
      text: 'Sure, what would you like to know?',
      time: '9:03 AM',
      isMe: true,
    ),
    const ChatMessageEntity(
      text:
          'The wireframing exercise — should we use specific tools or is pen and paper fine?',
      time: '9:05 AM',
      isMe: false,
    ),
    const ChatMessageEntity(
      text:
          'Either works! I recommend starting on paper then moving to Figma once you\'re happy with the layout.',
      time: '9:07 AM',
      isMe: true,
    ),
    const ChatMessageEntity(
      text: 'That makes sense, thank you!',
      time: '9:08 AM',
      isMe: false,
    ),
  ];
}
