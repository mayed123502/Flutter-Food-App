import 'package:ecommerce_app/model/restauntAll/dataOfRestaurant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../enums/loading_state.dart';
import '../../enums/loading_types.dart';
import '../../model/restaurants/restaurantsData_modle.dart';
import '../../services/home_services.dart';
import '../../services/restaurant_services.dart';

class ResturantController extends GetxController {
  var allRestaurantsList = <DataOfRestaurant>[].obs;
  final isLoading = true.obs;
  final scrollController = ScrollController();
  int _pageNo = 1;
  final loadingState = LoadingState(loadingType: LoadingType.stable).obs;

  @override
  void onInit() async {
    viewAllRestaurants();


    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      loadingState.value = LoadingState(loadingType: LoadingType.loading);
      try {
        await Future.delayed(Duration(seconds: 5));

        final listOfData = await RestaurantApi.viewAllRestaurants(++_pageNo);

        if (allRestaurantsList.isEmpty) {
          loadingState.value = LoadingState(
              loadingType: LoadingType.completed,
              completed: "there is no data");
        } else {
          allRestaurantsList.addAll(listOfData);
          loadingState.value = LoadingState(loadingType: LoadingType.loaded);
        }
      } catch (err) {
        loadingState.value =
            LoadingState(loadingType: LoadingType.error, error: err.toString());
      }
    }
  }

  void viewAllRestaurants() async {
    final listOfData = await RestaurantApi.viewAllRestaurants(
      _pageNo,
    );
    allRestaurantsList.assignAll(listOfData);
    isLoading.value = false;
  }

 
}
