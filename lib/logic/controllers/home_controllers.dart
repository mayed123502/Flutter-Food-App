import 'dart:async';

import 'package:get/get.dart';

import '../../model/homeProdect/homeProdectData.dart';
import '../../model/homeRestaurant/homeRestaurantData.dart';
import '../../model/offer/offerListData_model.dart';
import '../../services/home_services.dart';

class HomeController extends GetxController {
  var homeRestaurantsList = <HomeRestaurantsData>[].obs;
  var homeFoodsList = <HomeProdectData>[].obs;

  var allOfferList = <IndexError>[].obs;
  var homeOfferList = <OfferListData>[].obs;
  final isLoadinghomeRestaurantsList = true.obs;
  final isLoadinghomeFodeList = true.obs;
  final isLoadinghomeOfferList = true.obs;

  @override
  void onInit() async {
    viewHomeRestaurants();
    viewHomeFoods();
    viewHomeOffer();
  }

  void viewHomeRestaurants() async {
    final listOfData = await HomeServices.viewHomeRestaurants();
    homeRestaurantsList.assignAll(listOfData);
    isLoadinghomeRestaurantsList.value = false;
  }

  void viewHomeFoods() async {
    final listOfData = await HomeServices.viewHomeFoods();
    homeFoodsList.assignAll(listOfData);
    HomeServices.viewHomeFoods();
    isLoadinghomeFodeList.value = false;
  }

  Future<void> viewHomeOffer() async {
    final listOfData = await HomeServices.viewHomeOffers();
    homeOfferList.assignAll(listOfData);
    isLoadinghomeOfferList.value = false;
  }
}
