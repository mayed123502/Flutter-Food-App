import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../enums/loading_state.dart';
import '../../enums/loading_types.dart';
import '../../model/allCategories.dart';
import '../../model/homeProdect/homeProdectData.dart';
import '../../model/prodect/productDetails_modle.dart';
import '../../services/food_services.dart';
import '../../services/helper/statusrequest.dart';

class FodeController extends GetxController {
  var allFoodsList = <HomeProdectData>[].obs;
  var allCategoriesList = <Data>[].obs;

  final isLoading = true.obs;
  final scrollController = ScrollController();
  int _pageNo = 1;
  final loadingState = LoadingState(loadingType: LoadingType.stable).obs;
  late StatusRequest statusRequestFood;
  var currentSeletected = 0.obs;
  var currentSeletectedRating = 0.obs;
  var currentSeletectedSlider = 0.obs;
  Rx<RangeValues> values = RangeValues(0, 100.00).obs;
  RxString startLabel = 0.toString().obs;
  RxString endLabel = 100.00.toString().obs;
  @override
  void onInit() async {
    await viewAllFood();
    await viewCategories();
    print(allFoodsList[1].name);
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    if (scrollController.position.maxScrollExtent == scrollController.offset) {
      print('donw');
      loadingState.value = LoadingState(loadingType: LoadingType.loading);
      try {
        await Future.delayed(Duration(seconds: 5));

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

  Future<void> viewAllFood() async {
    final listOfData = await FoodApi.viewAllFoods(
      _pageNo,
    );
    allFoodsList.assignAll(listOfData);
    isLoading.value = false;
  }

  viewCategories() async {
    var response = await FoodApi.viewAllCategories();

    if (response['status'] == 200) {
      final dataList =
          (response['data'] as List).map((e) => Data.fromJson(e)).toList();
      print(dataList);
      allCategoriesList.addAll(dataList);
    }

    update();
  }
}
