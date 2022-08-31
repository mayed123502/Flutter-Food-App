import 'dart:async';

import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/address_controllers.dart';
import '../../../logic/controllers/checkout_controller.dart';
import '../../../utils/sharPreferenceUtils .dart';
import '../../widgets/cart/searchBar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../widgets/textWithFont.dart';

class ChangeAddressScreen extends StatelessWidget {
  final addressController = Get.find<AddressController>();
  final checkoutController = Get.find<CheckoutController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GetBuilder<AddressController>(builder: (_) {
            return TextButton(
              onPressed: () async {
                await addressController.saveAddres();
                await checkoutController.updateaddress();

                print('*********');

                print(await SharedPrefs.instance.getString("currentAddress"));
              },
              child: TextWithFont().textWithRobotoFont(
                  color: mainColor,
                  fontSize: 18.sp,
                  text: 'Save',
                  fontWeight: FontWeight.normal),
            );
          }),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
          "Change Address",
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                GetBuilder<AddressController>(builder: (_) {
                  return Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: addressController.latlong == null
                            ? Center(
                                child: CircularProgressIndicator(
                                color: mainColor,
                              ))
                            : GoogleMap(
                                mapType: MapType.normal,
                                initialCameraPosition:
                                    addressController.cameraPosition!,
                                onMapCreated: (GoogleMapController controller) {
                                  addressController.controller = (controller);
                                  addressController.controller?.animateCamera(
                                      CameraUpdate.newCameraPosition(
                                          addressController.cameraPosition!));
                                },
                                markers: addressController.markers,
                              ),
                      ),
                    ],
                  );
                }),
                SizedBox(
                  height: 20,
                ),
                // SearchBar(title: "Search Address"),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.orange.withOpacity(0.2),
                        ),
                        child: Icon(
                          Icons.star_rounded,
                          color: Colors.orange,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Choose a saved place",
                          style: TextStyle(
                            color: mainColor,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
