class ChatContactEntity {
  final String name;
  final String lastMessage;
  final String time;
  final int unreadCount;
  final String avatarUrl;

  const ChatContactEntity({
    required this.name,
    required this.lastMessage,
    required this.time,
    this.unreadCount = 0,
    required this.avatarUrl,
  });

  static List<ChatContactEntity> contacts = [
    ChatContactEntity(
      name: 'Sarah Johnson',
      lastMessage: 'Thank you for the feedback on my project!',
      time: '10:42 AM',
      unreadCount: 2,
      avatarUrl:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=100',
    ),
    ChatContactEntity(
      name: 'Mike Chen',
      lastMessage: 'Can you clarify the assignment requirements?',
      time: '9:15 AM',
      avatarUrl:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100',
    ),
    ChatContactEntity(
      name: 'Emma Wilson',
      lastMessage: 'I submitted my final project.',
      time: 'Yesterday',
      unreadCount: 1,
      avatarUrl:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=100',
    ),
  ];
}
