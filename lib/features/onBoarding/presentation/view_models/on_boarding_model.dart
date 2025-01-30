// Suggested code may be subject to a license. Learn more: ~LicenseLog:656813652.
import 'package:myapp/core/assets/app_assets.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String? subtitle;

  OnBoardingModel({required this.image, required this.title, this.subtitle});

  static List<OnBoardingModel> boardingList = [
    OnBoardingModel(
      image: AppAssets.welcome,
      title: "Welcome to Islami App",
    ),
    OnBoardingModel(
      image: AppAssets.kabba,
      title: "Welcome to Islami App",
      subtitle: "We Are Very Excited To Have You In Our Community",
    ),
    OnBoardingModel(
      image: AppAssets.quran,
      title: "Reading the Quran",
      subtitle: "Read, and your Lord is the Most Generous",
    ),
    OnBoardingModel(
      image: AppAssets.do3a2,
      title: "Bearish",
      subtitle: "Praise the name of your Lord, the Most High",
    ),
    OnBoardingModel(
      image: AppAssets.microphone,
      title: "Holy Quran Radio",
      subtitle:
          "You can listen to the Holy Quran Radio through the application for free and easily",
    ),
  ];
}
