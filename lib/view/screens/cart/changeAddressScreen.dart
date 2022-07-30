import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';

import '../../widgets/cart/searchBar.dart';

class ChangeAddressScreen extends StatelessWidget {
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
                      // style: Helper.getTheme(context).headline5,
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
                      child: Image.asset(
                        'assets/maping.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      right: 40,
                      child: Image.asset(
                        "assets/current_loc.png",
                      ),
                    ),
                    Positioned(
                      top: 70,
                      right: 180,
                      child: Image.asset(
                        "assets/loc.png",
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 30,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: ShapeDecoration(
                          color: mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Your Current Location",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "653 Nostrand Ave., Brooklyn, NY 11216",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      right: 205,
                      child: ClipPath(
                        clipper: CustomTriangleClipper(),
                        child: Container(
                          width: 30,
                          height: 30,
                          color: mainColor,
                        ),
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
