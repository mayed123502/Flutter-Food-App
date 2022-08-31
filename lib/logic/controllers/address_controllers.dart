import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:permission_handler/permission_handler.dart';

import '../../utils/sharPreferenceUtils .dart';

class AddressController extends GetxController {
  LatLng? latlong;
  CameraPosition? cameraPosition;
  GoogleMapController ? controller;
  Set<Marker> markers = {};
  var addres;

  @override
  void onInit() {
    // TODO: implement onInit
    cameraPosition = CameraPosition(target: LatLng(0, 0), zoom: 10.0);
    getCurrentLocation();
    super.onInit();
  }

  Future getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission != PermissionStatus.granted) {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission != PermissionStatus.granted) getLocation();
      return;
    }
    getLocation();
  }

  List<Placemark> results = [];
  getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);

    latlong = new LatLng(position.latitude, position.longitude);
    cameraPosition = CameraPosition(target: latlong!, zoom: 20.0);
    if (controller != null)
      controller!
          .animateCamera(CameraUpdate.newCameraPosition(cameraPosition!));

    markers.add(Marker(
        markerId: MarkerId("a"),
        draggable: true,
        position: latlong!,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        onDragEnd: (_currentlatLng) {
          
          latlong = _currentlatLng;
        }));
    getCurrentAddress();

    update();
  }

  getCurrentAddress() async {
    List<Placemark> placemarks = await placemarkFromCoordinates(
        latlong!.latitude, latlong!.longitude,
        localeIdentifier: 'en');

    var first = placemarks.first;

    if (first != null) {
      addres = addres = 'street ${first.street}';
    }
    update();
  }

  saveAddres() {
    SharedPrefs.instance.setString("currentAddress", addres);
    update();
  }
}
