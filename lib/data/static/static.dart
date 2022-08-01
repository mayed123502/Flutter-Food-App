import 'package:get/get.dart';

import '../../model/onboardingmodel.dart';
import '../../utils/constant/imageasset.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      body:
          'Achieve more of your long-term \n goals in less time and stay on \n top of your important food in \n one place.'.tr,
      title: 'search for favourit food \n near you'.tr,
      image: ImageAsset.onBoardingImageOne),
  OnBoardingModel(
      body:
          'Organize Your food are \n automatically sorted views to \n help you focus on your most \n  important things.'.tr,
      title: 'order your customized \n items'.tr,
      image: ImageAsset.onBoardingImageThree),
  OnBoardingModel(
      body:
          'Organize Your food are \n automatically sorted views to \n help you focus on your most \n important things.'.tr,
      title: 'Fast delievery to your \n place'.tr,
      image: ImageAsset.onBoardingImageTwo),
];
