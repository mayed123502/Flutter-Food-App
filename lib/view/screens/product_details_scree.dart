import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../logic/controllers/cart_controllers.dart';
import '../../logic/controllers/favorites_conntroller.dart';
import '../../logic/controllers/productDetails.dart';
import '../../routes/routes.dart';
import '../../utils/sharPreferenceUtils .dart';
import '../widgets/productDetails/backIcon.dart';
import '../widgets/productDetails/customTriangle.dart';
import '../widgets/productDetails/description.dart';
import '../widgets/productDetails/descriptionText.dart';
import '../widgets/productDetails/imageShadow.dart';
import '../widgets/productDetails/itemCounter.dart';
import '../widgets/productDetails/ratingBarRev.dart';
import '../widgets/productDetails/reviewProduct.dart';
import '../widgets/productDetails/seeMore.dart';
import '../widgets/productDetails/showImage.dart';
import '../widgets/productDetails/supTitle.dart';
import '../widgets/productDetails/titelText.dart';
import '../widgets/textWithFont.dart';

class ProductDetailsScreen extends GetView<ProductDetailsController> {
  ProductDetailsScreen({Key? key}) : super(key: key);
  final favoriteController = Get.find<FavoritesController>();
  final cartController = Get.find<CartController>();

  chicke() {
    print('done1');

    String name = controller.prodectData.value.name!;
    String image = controller.prodectData.value.image!;

    cartController.addProductToCart(
      quantity: controller.counter.value,
      product_id: controller.prodectData.value.id!,
      nameProduct: name,
      imageProduct: image,
    );

    print('done2');
  }

  Future<Null> _refreshLocalGallery() async {
    controller.viewProdectById(controller.prodectData.value.id!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      RefreshIndicator(
          onRefresh: _refreshLocalGallery,
          child: SingleChildScrollView(
            child: Obx(
              () => controller.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              ShowImage(
                                imageUrl: controller.prodectData.value.image!,
                              ),
                              ImageShadow(),
                            ],
                          ),
                          SafeArea(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                BackIcon(),
                                SizedBox(
                                  height:
                                       ScreenUtil().screenHeight  * 0.35,
                                ),
                                SizedBox(
                                  height: ScreenUtil().screenHeight * .64,
                                  width: double.infinity,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 30.0),
                                        child: Container(
                                          height: 700,
                                          width: double.infinity,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 30),
                                          decoration: ShapeDecoration(
                                            color: Theme.of(context).cardColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40),
                                                topRight: Radius.circular(40),
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TitelText(
                                                title: controller
                                                    .prodectData.value.name!,
                                              ),
                                              SupTitle(
                                                supTitle: controller
                                                    .prodectData.value.name!,
                                                cal: controller
                                                    .prodectData.value.calories
                                                    .toString(),
                                                price: controller
                                                    .prodectData.value.price
                                                    .toString(),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),

                                              ReviewProduct(),

                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                child: Row(
                                                  children: [
                                                    RatingBarRev(
                                                      rating: controller
                                                          .prodectData
                                                          .value
                                                          .rating!
                                                          .toDouble(),
                                                    ),
                                                    TextWithFont()
                                                        .textWithRalewayFont(
                                                            color: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline1!
                                                                .color!,
                                                            fontSize: 12.sp,
                                                            text:
                                                                '(${controller.prodectData.value.rating}) ${controller.prodectData.value.numRating} Review',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                Get.toNamed(
                                                                    Routes
                                                                        .allReviewScreen,
                                                                    arguments: {
                                                                      'prodectId': controller
                                                                          .prodectData
                                                                          .value
                                                                          .id
                                                                    });
                                                              },
                                                              child: SeeMore()),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              // "Description",
                                              SizedBox(
                                                height: 20.h,
                                              ),

                                              Description(),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              DescriptionText(
                                                decoration: controller
                                                    .prodectData
                                                    .value
                                                    .description!,
                                              ),

                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(



                                                      
                                                        horizontal: 20),
                                                child: Divider(
                                                  color: Colors.grey.shade400,
                                                  thickness: 1.5,
                                                ),
                                              ),

                                              ItemCounter(
                                                productDetailsController:
                                                    controller,
                                              ),

                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              GetBuilder<CartController>(
                                                builder: (_) => Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  child: AuthButton(
                                                    press: SharedPrefs.instance
                                                                .getString(
                                                                    'token') ==
                                                            null
                                                        ? null
                                                        : () => chicke(),
                                                    text: 'Add to Cart',
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),

                                      
                                      GestureDetector(
                                        onTap: () {
                                          favoriteController.mangeFavourites(
                                            controller.prodectData.value,
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 20,
                                          ),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              child: ClipPath(
                                                clipper: CustomTriangle(),
                                                child: Container(
                                                    width: 60,
                                                    height: 60,
                                                    color: Theme.of(context)
                                                        .cardColor,
                                                    child: favoriteController
                                                            .isFavourites(
                                                                controller
                                                                    .prodectData
                                                                    .value,
                                                                controller
                                                                    .prodectData
                                                                    .value
                                                                    .id!)
                                                        ? Icon(
                                                            Icons.favorite,
                                                            color: mainColor,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color: mainColor,
                                                          )),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
            ),
          ))
    ]));
  }
}
