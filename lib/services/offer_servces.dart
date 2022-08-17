import 'dart:convert';

import 'package:ecommerce_app/services/baseAPI.dart';
import 'package:ecommerce_app/services/helper/crud.dart';

class OfferServces {
  showAllOffer(int pageIndex) async {
    var url = '${BaseAPI.authPath}' + '/discounts';

    var response = await Crud.getData(url, map: {
      "pagesize": 6,
      "page": pageIndex,
    });
    return response.fold((l) => l, (r) => r);
  }
}
