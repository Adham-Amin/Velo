import 'package:velo/core/utils/app_assets.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String description;

  const OnboardingModel({
    required this.image,
    required this.description,
    required this.title,
  });

  static List<OnboardingModel> pages = [
    OnboardingModel(
      image: AppAssets.imagesOnboardingOne,
      title: 'Learn Faster',
      description: 'No more long videos. Just the skills you need to succeed',
    ),
    OnboardingModel(
      image: AppAssets.imagesOnboardingTwo,
      title: 'Everything in One Place',
      description: 'Design, Code, and more. All organized for you',
    ),
    OnboardingModel(
      image: AppAssets.imagesOnboardingThree,
      title: 'Start Your Journey',
      description: 'Earn your certificate and get your dream job',
    ),
  ];
}
