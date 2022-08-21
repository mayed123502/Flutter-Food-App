import 'dart:async';

import 'package:get/get.dart';

import '../../model/homeProdect/homeProdectData.dart';
import '../../model/homeRestaurant/homeRestaurantData.dart';
import '../../model/offer/offerListData_model.dart';
import '../../services/helper/handingdatacontroller.dart';
import '../../services/helper/statusrequest.dart';
import '../../services/home_services.dart';

class HomeController extends GetxController {
  var homeRestaurantsList = <HomeRestaurantsData>[].obs;
  var homeFoodsList = <HomeProdectData>[].obs;

  var homeOfferList = <OfferListData>[].obs;

  late StatusRequest statusRequestRestaurant;
  late StatusRequest statusRequestFode;
  late StatusRequest statusRequestOffer;

  @override
  void onInit() async {
    viewHomeRestaurants();
    viewHomeFoods();
    viewHomeOffer();
  }
  // print("=============================== Controller $response ");

  void viewHomeRestaurants() async {
    statusRequestRestaurant = StatusRequest.loading;
    var response = await HomeServices.viewHomeRestaurants();
    statusRequestRestaurant = handlingData(response);
    if (StatusRequest.success == statusRequestRestaurant) {
      if (response['status'] == 200) {
        final dataList = (response['data'] as List)
            .map((e) => HomeRestaurantsData.fromJson(e))
            .toList();
        homeRestaurantsList.addAll(dataList);
      } else {
        statusRequestRestaurant = StatusRequest.failure;
      }
    }

    update();
  }

  void viewHomeFoods() async {
    statusRequestFode = StatusRequest.loading;
    var response = await HomeServices.viewHomeFoods();
    statusRequestFode = handlingData(response);

    if (StatusRequest.success == statusRequestFode) {
      if (response['status'] == 200) {
        final dataList = (response['data'] as List)
            .map((e) => HomeProdectData.fromJson(e))
            .toList();
        homeFoodsList.addAll(dataList);
      } else {
        statusRequestFode = StatusRequest.failure;
      }
    }
    update();
  }

  Future<void> viewHomeOffer() async {
    statusRequestOffer = StatusRequest.loading;
    var response = await HomeServices.viewHomeOffers();
    statusRequestOffer = handlingData(response);
    // print("=============================== Controller $response ");

    if (StatusRequest.success == statusRequestOffer) {
      if (response['status'] == 200) {
        final dataList = (response['data']['data'] as List)
            .map((e) => OfferListData.fromJson(e))
            .toList();
        homeOfferList.addAll(dataList);
      } else {
        statusRequestOffer = StatusRequest.failure;
      }
    }
    update();
  }
}
