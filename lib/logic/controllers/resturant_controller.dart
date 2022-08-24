import 'package:ecommerce_app/model/restauntAll/dataOfRestaurant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../enums/loading_state.dart';
import '../../enums/loading_types.dart';

import '../../model/restauntAll/allResrtaurantData_model.dart';
import '../../services/helper/handingdatacontroller.dart';
import '../../services/helper/statusrequest.dart';
import '../../services/restaurant_services.dart';

class ResturantController extends GetxController {
  var allRestaurantsList = <DataOfRestaurant>[].obs;
  var allRestaurantsListWithOutPage = <DataOfRestaurant>[].obs;
  var allCategoriesList = <dynamic>[].obs;
  final scrollController = ScrollController();
  int _pageNo = 1;
  final loadingState = LoadingState(loadingType: LoadingType.stable).obs;
  var currentSeletected = 0.obs;
  late StatusRequest statusRequestRestaurant;
  late StatusRequest statusRequestRestaurantWithOutPage;

  @override
  void onInit() async {
    viewAllRestaurants();
    viewRestaurantsWithOutPag();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      loadingState.value = LoadingState(loadingType: LoadingType.loading);
      try {
        await Future.delayed(Duration(seconds: 5));

        var response = await RestaurantApi.viewAllRestaurants(++_pageNo);

        if (allRestaurantsList.isEmpty) {
          loadingState.value = LoadingState(
              loadingType: LoadingType.completed,
              completed: "there is no data");
        } else {
          final dataList = (response['data']['restaurants']['data'] as List)
              .map((e) => DataOfRestaurant.fromJson(e))
              .toList();
          allRestaurantsList.addAll(dataList);
          loadingState.value = LoadingState(loadingType: LoadingType.loaded);
        }
      } catch (err) {
        loadingState.value =
            LoadingState(loadingType: LoadingType.error, error: err.toString());
      }
    }
  }

  void viewAllRestaurants() async {
    statusRequestRestaurant = StatusRequest.loading;

    var response = await RestaurantApi.viewAllRestaurants(
      _pageNo,
    );
    statusRequestRestaurant = handlingData(response);
    if (StatusRequest.success == statusRequestRestaurant) {
      if (response['status'] == 200) {
        AllResrtaurantData dataOfRestaurant =
            AllResrtaurantData.fromJson(response['data']);
        allCategoriesList.assignAll(dataOfRestaurant.categories!);

        allRestaurantsList.assignAll(dataOfRestaurant.restaurants!.data!);
      } else {
        statusRequestRestaurant = StatusRequest.failure;
      }
    }
    update();
  }

  void viewRestaurantsWithOutPag() async {
    statusRequestRestaurantWithOutPage = StatusRequest.loading;
    var response = await RestaurantApi.viewRestaurantsWithOutPage();
    statusRequestRestaurantWithOutPage = handlingData(response);
    if (StatusRequest.success == statusRequestRestaurantWithOutPage) {
      if (response['status'] == 200) {
        final dataList = (response['data']['restaurants']['data'] as List)
            .map((e) => DataOfRestaurant.fromJson(e))
            .toList();
        allRestaurantsListWithOutPage.assignAll(dataList);
      } else {
        statusRequestRestaurantWithOutPage = StatusRequest.failure;
      }
    }
    update();
  }
}
