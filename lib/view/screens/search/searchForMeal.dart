import 'package:ecommerce_app/view/widgets/search/listTileCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../enums/loading_types.dart';
import '../../../logic/controllers/search_controller.dart';
import '../../../model/search/search_Model.dart';

import '../../widgets/search/showNotFound.dart';

class SearchForMeal extends StatelessWidget {
  SearchForMeal({
    Key? key,
  }) : super(key: key);

  final searchController = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final loadingType =
          searchController.loadingStateProducts.value.loadingType;

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            searchController.searchProductsList.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                        controller: searchController.scrollControllerProducts,
                        physics: const BouncingScrollPhysics(),
                        itemCount: loadingType == LoadingType.loading ||
                                loadingType == LoadingType.error ||
                                loadingType == LoadingType.completed
                            ? searchController.searchProductsList.length + 1
                            : searchController.searchProductsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          final isLastItem = index ==
                              searchController.searchProductsList.length;
                          if (isLastItem &&
                              loadingType == LoadingType.loading) {
                            return Center(
                              child: CircularProgressIndicator.adaptive(),
                            );
                          } else if (isLastItem &&
                              loadingType == LoadingType.error) {
                            return Container();
                          } else if (isLastItem &&
                              loadingType == LoadingType.completed) {
                            return Text(
                              searchController
                                  .loadingStateProducts.value.completed
                                  .toString(),
                            );
                          } else {
                            return ListTileCard(
                              subtitleWidget: Row(
                                children: [
                                  Image.asset('assets/fire.png'),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    '${searchController.searchProductsList[index].calories}',
                                    style: TextStyle(
                                      fontSize: 12,
                                    color:  Theme.of(context).textTheme.headline1!.color!.withOpacity(.5)
                                    ),
                                  ),
                                ],
                              ),
                              dataProducts:
                                  searchController.searchProductsList[index],
                              dataRestaurant: DataRestaurant(),
                              isProduct: true,
                            );
                          }
                        }))
                : ShowNotFound(),
          ],
        ),
      );
    });
  }
}
