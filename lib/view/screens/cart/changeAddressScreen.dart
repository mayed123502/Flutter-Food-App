import 'dart:async';

import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/address_controllers.dart';
import '../../widgets/cart/searchBar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChangeAddressScreen extends StatelessWidget {
  // Completer<GoogleMapController> _controller = Completer();

  // static final CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );

  // static final CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  final addressController = Get.find<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                    Text(
                      "Change Address",
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: GoogleMap(
                        mapType: MapType.hybrid,
                        initialCameraPosition: CameraPosition(
                            target: addressController.initialcameraposition),
                        onMapCreated: addressController.onMapCreated,
                        myLocationEnabled: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SearchBar(title: "Search Address"),
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
