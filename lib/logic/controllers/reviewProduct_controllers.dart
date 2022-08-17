import 'package:ecommerce_app/model/review/reviewProdect_model.dart';
import 'package:get/get.dart';

import '../../services/helper/handingdatacontroller.dart';
import '../../services/helper/statusrequest.dart';
import '../../services/reviewProduct_services.dart';

class RreviewProductController extends GetxController {
  var reviewProduct = <Data>[].obs;
  late StatusRequest statusReviewProduct;
  late StatusRequest statusAddReview;
  double rateing = 4.0;
  int? idProdect;
  @override
  void onInit() {
    var prodectId = Get.arguments['prodectId'];
    idProdect = prodectId;
    print(prodectId);
    showProductReviews(prodectId.toString());
    super.onInit();
  }

  showProductReviews(String productId) async {
    statusReviewProduct = StatusRequest.loading;
    var response = await ReviewProduct.showProductReviews(productId);
    statusReviewProduct = handlingData(response);
    if (StatusRequest.success == statusReviewProduct) {
      if (response['status'] == 200) {
        final dataList =
            (response['data'] as List).map((e) => Data.fromJson(e)).toList();
        reviewProduct.addAll(dataList);
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
}
