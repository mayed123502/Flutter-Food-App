import 'package:ecommerce_app/model/review/reviewProdect_model.dart';
import 'package:ecommerce_app/routes/routes.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../logic/controllers/reviewProduct_controllers.dart';
import '../../../services/helper/handlingdataview.dart';
import '../../../utils/sharPreferenceUtils .dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/review/appBarRev.dart';
import '../../widgets/review/cardRev.dart';
import '../../widgets/review/reviewRating.dart';

class AllReviewScreen extends StatelessWidget {
  AllReviewScreen({Key? key}) : super(key: key);
  final reviewController = Get.find<RreviewProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarRev(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  ReviewRating(),
                  SizedBox(
                    height: 20.h,
                  ),
                  GetBuilder<RreviewProductController>(builder: (_) {
                    return HandlingDataView(
                        statusRequest: reviewController.statusReviewProduct,
                        widget: Container(
                          width: double.infinity,
                          height: Get.height * .7,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: reviewController.reviewProduct.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CardRev(
                                data: reviewController.reviewProduct[index],
                              );
                            },
                          ),
                        ));
                  }),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                  ),
                  child: AuthButton(
                    press: SharedPrefs.instance.getString('token') == null
                        ? null
                        : () {
                            Get.offAndToNamed(Routes.writeReviewScreen,
                                arguments: {
                                  'prodectId': reviewController.idProdect
                                });
                          },
                    text: 'Write Review',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
