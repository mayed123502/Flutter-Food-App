import 'package:ecommerce_app/model/review/reviewProdect_model.dart';
import 'package:get/get.dart';

import '../../services/helper/handingdatacontroller.dart';
import '../../services/helper/statusrequest.dart';
import '../../services/reviewProduct_services.dart';

class RreviewProductController extends GetxController {
  var reviewProduct = <Data>[].obs;
  late StatusRequest statusReviewProduct;
  late StatusRequest statusAddReview;
  var isLoading = true.obs;
  double rateing = 4.0;

  int? idProdect;
  var currentSeletected = 0.obs;

  final List sizeList = [
    5,
    4,
    3,
    2,
    1,
  ].obs;
  @override
  void onInit() {
    var prodectId = Get.arguments['prodectId'];
    print('prodectId $prodectId');
    idProdect = prodectId as int;
    showProductReviews(prodectId.toString(), 5);
    isLoading.value = false;
    super.onInit();
  }

  showProductReviews(String productId, int numReviews) async {
    reviewProduct.value = [];

    statusReviewProduct = StatusRequest.loading;
    var response = await ReviewProduct.showProductReviews(productId);
    statusReviewProduct = handlingData(response);
    if (StatusRequest.success == statusReviewProduct) {
      if (response['status'] == 200) {
        final dataList =
            (response['data'] as List).map((e) => Data.fromJson(e)).toList();
        for (int i = 0; i < dataList.length; i++) {
          reviewProduct.addIf(dataList[i].rate == numReviews, dataList[i]);
        }
      } else {
        statusReviewProduct = StatusRequest.failure;
      }
    }
    update();
  }

  addReviewProduct(String feedback, int rate, String productId) async {
    statusAddReview = StatusRequest.loading;
    var response =
        await ReviewProduct.addReviewProduct(feedback, rate, productId);
    statusAddReview = handlingData(response);
    if (StatusRequest.success == statusAddReview) {
      if (response['status'] == 200) {
      } else {
        statusAddReview = StatusRequest.failure;
      }
    }

    update();
  }

  // showFilterReviews(String productId, int numReviews) async {
  //   reviewProduct.value = [];
  //   statusReviewProduct = StatusRequest.loading;
  //   var response = await ReviewProduct.showProductReviews(productId);
  //   statusReviewProduct = handlingData(response);
  //   if (StatusRequest.success == statusReviewProduct) {
  //     if (response['status'] == 200) {
  //       final dataList = await (response['data'] as List)
  //           .map((e) => Data.fromJson(e))
  //           .toList();
  //       for (int i = 0; i < dataList.length; i++) {
  //         print(dataList[i].rate == numReviews);
  //         reviewProduct.addIf(dataList[i].rate == numReviews, dataList[i]);
  //       }
  //     } else {
  //       statusReviewProduct = StatusRequest.failure;
  //     }
  //   }

  //   update();
  // }
}
