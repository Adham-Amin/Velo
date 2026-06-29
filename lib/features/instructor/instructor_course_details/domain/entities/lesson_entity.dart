class LessonEntity {
  final int number;
  final String title;
  final String duration;

  const LessonEntity({
    required this.number,
    required this.title,
    required this.duration,
  });

  static List<LessonEntity> lessons = [
    const LessonEntity(
      number: 1,
      title: 'Introduction to Design Thinking',
      duration: '12 min',
    ),
    const LessonEntity(
      number: 2,
      title: 'User Research Methods',
      duration: '18 min',
    ),
    const LessonEntity(
      number: 3,
      title: 'Wireframing Basics',
      duration: '15 min',
    ),
    const LessonEntity(
      number: 4,
      title: 'Prototyping with Figma',
      duration: '22 min',
    ),
    const LessonEntity(
      number: 5,
      title: 'Usability Testing',
      duration: '20 min',
    ),
  ];
}
