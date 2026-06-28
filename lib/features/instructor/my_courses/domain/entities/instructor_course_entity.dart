class InstructorCourseEntity {
  final String title;
  final String category;
  final double rating;
  final int students;
  final int lessons;
  final double price;
  final String imageUrl;

  const InstructorCourseEntity({
    required this.title,
    required this.category,
    required this.rating,
    required this.students,
    required this.lessons,
    required this.price,
    required this.imageUrl,
  });

  static List<InstructorCourseEntity> courses = [
    InstructorCourseEntity(
      title: 'Design Fundamentals',
      category: 'Design',
      rating: 4.5,
      students: 1000,
      lessons: 20,
      price: 49.99,
      imageUrl: 'https://i.pravatar.cc/150?img=18',
    ),
    InstructorCourseEntity(
      title: 'Flutter Fundamentals',
      category: 'Mobile',
      rating: 4.0,
      students: 500,
      lessons: 10,
      price: 39.99,
      imageUrl: 'https://i.pravatar.cc/150?img=19',
    ),
    InstructorCourseEntity(
      title: 'UI/UX Fundamentals',
      category: 'Design',
      rating: 4.8,
      students: 2000,
      lessons: 30,
      price: 59.99,
      imageUrl: 'https://i.pravatar.cc/150?img=20',
    ),
  ];
}
