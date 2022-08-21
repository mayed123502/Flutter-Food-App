import 'package:get/get.dart';

import '../../model/homeProdect/homeProdectData.dart';
import '../../utils/sharPreferenceUtils .dart';

class FavoritesController extends GetxController {
  var favouritesList = <HomeProdectData>[].obs;
  var storge = SharedPrefs.instance;
  String favouritesListString = '';
  @override
  void onInit() async {
    favouritesListString = storge.getString('favouritesList') ?? '';
    if (favouritesListString != '') {
      final List<HomeProdectData> favouriteList =
          HomeProdectData.decode(favouritesListString);
      print(favouriteList.length);

      favouritesList.value = favouriteList;
    }
    super.onInit();
  }

  void mangeFavourites(
    HomeProdectData homeProdectData,
  ) async {
    var index = favouritesList
        .indexWhere((element) => element.id == homeProdectData.id);
    if (index >= 0) {
      favouritesList.removeAt(index);
      await storge.remove(
        'favouritesList',
      );
    } else {
      favouritesList.addIf(
          !favouritesList.contains(homeProdectData), homeProdectData);
          
      final String encodedData = HomeProdectData.encode(favouritesList);
      await storge.setString('favouritesList', encodedData);
    }
  }

  bool isFavourites(HomeProdectData homeProdectData, int id) {
    bool isFavourite = false;

    for (int i = 0; i < favouritesList.length; i++) {
      if (favouritesList[i].id == id) {
        isFavourite = true;
        break;
      }
    }

    return isFavourite;
  }
}
