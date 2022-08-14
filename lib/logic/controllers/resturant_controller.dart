import 'package:ecommerce_app/model/restauntAll/dataOfRestaurant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../enums/loading_state.dart';
import '../../enums/loading_types.dart';

import '../../services/restaurant_services.dart';

class ResturantController extends GetxController {
  var allRestaurantsList = <DataOfRestaurant>[].obs;
  var allRestaurantsListWithOutPage = <DataOfRestaurant>[].obs;

  var allCategoriesList = <dynamic>[].obs;

  final isLoadingRestaurants = true.obs;
  final isLoadingRestaurantsWithOutPage = true.obs;

  final isLoadingCategoriesList = true.obs;

  final scrollController = ScrollController();
  int _pageNo = 1;
  final loadingState = LoadingState(loadingType: LoadingType.stable).obs;
  var currentSeletected = 0.obs;

  @override
  void onInit() async {
    viewAllRestaurants();
    viewAllCategories();
    viewRestaurantsWithOutPag();
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
    isLoadingRestaurants.value = false;
  }

  void viewRestaurantsWithOutPag() async {
    final listOfData = await RestaurantApi.viewRestaurantsWithOutPage();
    allRestaurantsListWithOutPage.assignAll(listOfData);
    isLoadingRestaurantsWithOutPage.value = false;
  }

  void viewAllCategories() async {
    final listOfData = await RestaurantApi.viewAllCategories(
      _pageNo,
    );
    allCategoriesList.assignAll(listOfData);
    isLoadingCategoriesList.value = false;
  }

  // void filterByCategorie(String categorie) async {
  //   if (categorie == 'All') {
  //     viewAllRestaurants();
  //   } else {
  //     List<DataOfRestaurant> outputList = await allRestaurantsListWithOutPage
  //         .where((o) => o.categories![0].title == categorie)
  //         .toList();
  //     for (final e in outputList) {
  //       //
  //       print(e.categories![0].title);
  //     }
  //     allRestaurantsListWithOutPage.assignAll(outputList);
  //   }
  // }
}
