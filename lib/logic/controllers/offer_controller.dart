import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../enums/loading_state.dart';
import '../../enums/loading_types.dart';
import '../../model/offer/all_offer.dart';
import '../../services/helper/handingdatacontroller.dart';
import '../../services/helper/statusrequest.dart';
import '../../services/offer_servces.dart';

class OfferController extends GetxController {
  var offerList = <DataOffer>[].obs;
  late StatusRequest statusOffer;
  int _pageNo = 1;
  final scrollController = ScrollController();
  final loadingState = LoadingState(loadingType: LoadingType.stable).obs;

  @override
  void onInit() async {
    showAllOffer();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      loadingState.value = LoadingState(loadingType: LoadingType.loading);
      try {
        await Future.delayed(Duration(seconds: 5));

        var listOfData = await OfferServces().showAllOffer(++_pageNo);

        if (offerList.isEmpty) {
          loadingState.value = LoadingState(
              loadingType: LoadingType.completed,
              completed: "there is no data");
        } else {
          final dataList = (listOfData['data']['data'] as List)
              .map((e) => DataOffer.fromJson(e))
              .toList();

          offerList.addAll(dataList);
          loadingState.value = LoadingState(loadingType: LoadingType.loaded);
        }
      } catch (err) {
        loadingState.value =
            LoadingState(loadingType: LoadingType.error, error: err.toString());
      }
    }
  }

  showAllOffer() async {
    statusOffer = StatusRequest.loading;

    var response = await OfferServces().showAllOffer(
      _pageNo,
    );
    statusOffer = handlingData(response);

    if (StatusRequest.success == statusOffer) {
      if (response['status'] == 200) {
        final dataList = (response['data']['data'] as List)
            .map((e) => DataOffer.fromJson(e))
            .toList();
        offerList.addAll(dataList);
      } else {
        statusOffer = StatusRequest.failure;
      }
    }
    update();
  }
}
