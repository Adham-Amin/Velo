class ReviewEntity {
  final String name;
  final String course;
  final String date;
  final double rating;
  final String comment;
  final String avatarAsset;

  const ReviewEntity({
    required this.name,
    required this.course,
    required this.date,
    required this.rating,
    required this.comment,
    required this.avatarAsset,
  });

  static final List<ReviewEntity> reviews = [
    ReviewEntity(
      name: 'John Doe',
      course: 'Flutter Fundamentals',
      date: '2022-05-01',
      rating: 4.5,
      comment:
          'I had a great time learning Flutter. The instructors were knowledgeable and helpful.',
      avatarAsset: 'https://i.pravatar.cc/150?img=5',
    ),
    ReviewEntity(
      name: 'Jane Smith',
      course: 'Advanced Flutter',
      date: '2022-05-10',
      rating: 4.0,
      comment:
          'The course was well-structured and engaging. I learned a lot from the instructors.',
      avatarAsset: 'https://i.pravatar.cc/150?img=4',
    ),
    ReviewEntity(
      name: 'Bob Johnson',
      course: 'Flutter for Beginners',
      date: '2022-05-15',
      rating: 3.5,
      comment:
          'The course was simple and easy to understand. I enjoyed the practical examples.',
      avatarAsset: 'https://i.pravatar.cc/150?img=3',
    ),
  ];
}
