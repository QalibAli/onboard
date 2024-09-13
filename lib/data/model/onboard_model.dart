import 'package:lesson/utils/constants/app_assets.dart';
import 'package:lesson/utils/constants/app_texts.dart';

class OnboardModel {
  final String text;
  final String image;

  OnboardModel({
    required this.text,
    required this.image,
  });

  static List<OnboardModel> model = [
    OnboardModel(text: AppTexts.onboard1, image: AppAssets.onboard1),
    OnboardModel(text: AppTexts.onboard2, image: AppAssets.onboard2),
    OnboardModel(text: AppTexts.onboard3, image: AppAssets.onboard3),
  ];
}
