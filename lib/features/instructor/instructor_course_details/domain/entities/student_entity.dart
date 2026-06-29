class StudentEntity {
  final String name;
  final String enrolledDate;
  final double progress;
  final String avatar;

  const StudentEntity({
    required this.name,
    required this.enrolledDate,
    required this.progress,
    required this.avatar,
  });

  static List<StudentEntity> students = [
    const StudentEntity(
      name: 'Sarah Johnson',
      enrolledDate: 'Jan 15, 2026',
      progress: 0.75,
      avatar: 'https://i.pravatar.cc/150?img=32',
    ),
    const StudentEntity(
      name: 'Mike Chen',
      enrolledDate: 'Feb 3, 2026',
      progress: 0.42,
      avatar: 'https://i.pravatar.cc/150?img=33',
    ),
    const StudentEntity(
      name: 'Emma Wilson',
      enrolledDate: 'Mar 8, 2026',
      progress: 0.91,
      avatar: 'https://i.pravatar.cc/150?img=34',
    ),
    const StudentEntity(
      name: 'James Brown',
      enrolledDate: 'Mar 20, 2026',
      progress: 0.28,
      avatar: 'https://i.pravatar.cc/150?img=35',
    ),
  ];
}
