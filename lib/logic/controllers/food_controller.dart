import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../enums/loading_state.dart';
import '../../enums/loading_types.dart';
import '../../model/homeProdect/homeProdectData.dart';
import '../../model/prodect/productDetails_modle.dart';
import '../../services/food_services.dart';

class FodeController extends GetxController {
  var allFoodsList = <HomeProdectData>[].obs;
  final isLoading = true.obs;
  final scrollController = ScrollController();
  int _pageNo = 1;
  final loadingState = LoadingState(loadingType: LoadingType.stable).obs;

  @override
  void onInit() async {
    viewAllFood();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      loadingState.value = LoadingState(loadingType: LoadingType.loading);
      try {
        await Future.delayed(Duration(seconds: 5));

        // final listOfData =
        final listOfData = await FoodApi.viewAllFoods(++_pageNo);

        if (allFoodsList.isEmpty) {
          loadingState.value = LoadingState(
              loadingType: LoadingType.completed,
              completed: "there is no data");
        } else {
          allFoodsList.addAll(listOfData);
          loadingState.value = LoadingState(loadingType: LoadingType.loaded);
        }
      } catch (err) {
        loadingState.value =
            LoadingState(loadingType: LoadingType.error, error: err.toString());
      }
    }
  }

  void viewAllFood() async {
    final listOfData = await FoodApi.viewAllFoods(
      _pageNo,
    );
    allFoodsList.assignAll(listOfData);
    isLoading.value = false;
  }

  
}
