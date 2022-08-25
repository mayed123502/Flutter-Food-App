import 'dart:convert';

import 'package:ecommerce_app/model/cart/Cart_model.dart';
import 'package:get/get.dart';

import '../../services/baseAPI.dart';
import '../../services/cart_services.dart';
import '../../utils/sharPreferenceUtils .dart';

class CartController extends GetxController {
  var cartDataList = <CartData>[].obs;
  var storge = SharedPrefs.instance;
  String cartListString = '';
  @override
  void onInit() async {
    cartListString = storge.getString('cartDataList') ?? '';
    if (cartListString != '') {
      final List<CartData> cartList = CartData.decode(cartListString);

      cartDataList.value = cartList;
    }
    super.onInit();
  }

  void addProductToCart(
      {required int quantity,
      required int product_id,
      required String nameProduct,
      required String imageProduct}) async {
    await CartServices()
        .addToCart(quantity: quantity, product_id: product_id)
        .then((value) {
      cartDataList.add(
        CartData(
          id: value.id,
          orderId: value.orderId,
          productId: value.orderId,
          unitPrice: value.unitPrice,
          quantity: value.quantity,
          price: value.price,
          image: imageProduct,
          name: nameProduct,
        ),
      );

      final String encodedData = CartData.encode(cartDataList);
      storge.setString('cartDataList', encodedData);
    });

    update();
  }

  void counterAddProductToCart(CartData cartData) {
    int quantityUpdate = cartData.quantity! + 1;
    CartData cartUpdate = CartData(
      id: cartData.id,
      orderId: cartData.orderId,
      productId: cartData.orderId,
      unitPrice: cartData.unitPrice,
      quantity: quantityUpdate,
      price: cartData.price,
      image: cartData.image,
      name: cartData.name,
    );
    cartDataList.indexOf(cartData);
    cartDataList[cartDataList
        .indexWhere((element) => element.id == cartData.id)] = cartUpdate;

    final String encodedData = CartData.encode(cartDataList);
    storge.setString('cartDataList', encodedData);
    update();
  }

  void counterRemoveProductToCart(CartData cartData) {
    int quantityUpdate = cartData.quantity! + -1;
    CartData cartUpdate = CartData(
      id: cartData.id,
      orderId: cartData.orderId,
      productId: cartData.orderId,
      unitPrice: cartData.unitPrice,
      quantity: quantityUpdate,
      price: cartData.price,
      image: cartData.image,
      name: cartData.name,
    );
    cartDataList.indexOf(cartData);
    cartDataList[cartDataList
        .indexWhere((element) => element.id == cartData.id)] = cartUpdate;

    final String encodedData = CartData.encode(cartDataList);
    storge.setString('cartDataList', encodedData);
    update();
  }

  double cartTotalPrice() {
    double total = 0;
    cartDataList.forEach((item) {
      num price = item.unitPrice!;
      total += item.quantity! * price;
    });
    return total;
  }

  void checkOutCart({required List<CartData> cartData}) async {
    await CartServices().checkOutCart(cartData: cartData);
  }

  void deleteFromCart({required int idOrder}) async {
    await CartServices().deleteFromCart(order_id: idOrder);

    cartDataList
        .removeAt(cartDataList.indexWhere((element) => element.id == idOrder));
    final String encodedData = CartData.encode(cartDataList);
    storge.setString('cartDataList', encodedData);
    print('de Done');
    update();
  }
}
//   double totalPriceSum(int order_id) {
//   return ItemsPrice.where((item) => item.todoListId == todoListId)
//                    .fold(0.0, (sum, item) => sum + item['price']);
// }

  // var productsMap = {}.obs;

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // void addProductToCart(HomeProdectData productModels) {
  //   if (productsMap.containsKey(productModels)) {
  //     productsMap[productModels] += 1;

  //     print(productsMap[productModels]);
  //   } else {
  //     productsMap[productModels] = 1;
  //     print(productsMap[productModels]);
  //   }
  // }

  // void addProductToCartCounter(HomeProdectData productModels, int counter) {
  //   if (productsMap.containsKey(productModels)) {
  //     productsMap[productModels] += counter;

  //     print(productsMap[productModels]);
  //   } else {
  //     productsMap[productModels] = counter;

  //     print(productsMap[productModels]);
  //   }
  // }

  // void removeProductsFarmCart(HomeProdectData productModels) {
  //   if (productsMap.containsKey(productModels) &&
  //       productsMap[productModels] == 1) {
  //     productsMap.removeWhere((key, value) => key == productModels);
  //   } else {
  //     productsMap[productModels] -= 1;
  //   }
  // }

  // void removeOneProduct(HomeProdectData productModels) {
  //   productsMap.removeWhere((key, value) => key == productModels);
  // }

  // get productSubTotal =>
  //     productsMap.entries.map((e) => e.key.price * e.value).toList();

  // get total => productsMap.entries
  //     .map((e) => e.key.price * e.value)
  //     .toList()
  //     .reduce((value, element) => value + element)
  //     .toStringAsFixed(2);

  // int quantity() {
  //   if (productsMap.isEmpty) {
  //     return 0;
  //   } else {
  //     return productsMap.entries
  //         .map((e) => e.value)
  //         .toList()
  //         .reduce((value, element) => value + element);
  //   }
  // }

