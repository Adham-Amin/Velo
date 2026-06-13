import 'package:velo/core/utils/app_assets.dart';

class InstructorModel {
  final String image;
  final String name;
  final String specialty;

  InstructorModel({
    required this.image,
    required this.name,
    required this.specialty,
  });

  static List<InstructorModel> instructors = [
    InstructorModel(
      image: AppAssets.imagesUserPhoto,
      name: 'David Smith',
      specialty: 'Design',
    ),
    InstructorModel(
      image: AppAssets.imagesUserPhoto,
      name: 'Adham',
      specialty: 'Flutter Developer',
    ),
    InstructorModel(
      image: AppAssets.imagesUserPhoto,
      name: 'Kareem',
      specialty: '.Net Developer',
    ),
  ];
}
