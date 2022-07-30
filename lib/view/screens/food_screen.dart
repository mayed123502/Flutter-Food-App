import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:clip_shadow/clip_shadow.dart';

class IndividualItem extends StatelessWidget {
  static const routeName = "/individualScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            'assets/hamburger.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.0, 0.4],
                              colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.0),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SafeArea(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                                           Image.asset("assets/cart_white.png"),

                                
                              ],
                            ),
                          ),
                          SizedBox(
                        height: MediaQuery.of(context).size.height * 0.35,
                          ),
                          SizedBox(
                            height: 800,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Container(
                                    height: 700,
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 30),
                                    decoration: const ShapeDecoration(
                                      color: Colors.white,
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
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            "Tandoori Chicken Pizza",
                                        
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                       Image.asset(
                                                    "assets/star_filled.png",
                                                  ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                         Image.asset(
                                                    "assets/star_filled.png",
                                                  ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                         Image.asset(
                                                    "assets/star_filled.png",
                                                  ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                        Image.asset(
                                                    "assets/star_filled.png",
                                                  ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                     Image.asset(
                                                    "assets/star.png",
                                                  ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "4 Star Ratings",
                                                    style: TextStyle(
                                                      color: mainColor,
                                                      fontSize: 12,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      "Rs. 750",
                                                      style: TextStyle(
                                                        color: mainColor,
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    Text("/per Portion")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            "Description",
                                            style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada"),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Divider(
                                            color:mainColor,
                                            thickness: 1.5,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            "Customize your Order",
                                            style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Container(
                                            height: 50,
                                            width: double.infinity,
                                            padding: const EdgeInsets.only(
                                                left: 30, right: 10),
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              color: mainColor,
                                            ),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                hint: Row(
                                                  children: const [
                                                    Text(
                                                        "-Select the size of portion-"),
                                                  ],
                                                ),
                                                value: "default",
                                                onChanged: (_) {},
                                                items: const [
                                                  DropdownMenuItem(
                                                    child: Text(
                                                        "-Select the size of portion-"),
                                                    value: "default",
                                                  ),
                                                ],
                                                icon: Image.asset(
                                                 
                                                    "assets/dropdown.png",
                                                  
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Container(
                                            height: 50,
                                            width: double.infinity,
                                            padding: const EdgeInsets.only(
                                                left: 30, right: 10),
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              color: mainColor,
                                            ),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                hint: Row(
                                                  children: [
                                                    const Text(
                                                        "-Select the ingredients-"),
                                                  ],
                                                ),
                                                value: "default",
                                                onChanged: (_) {},
                                                items: [
                                                  const DropdownMenuItem(
                                                    child: Text(
                                                        "-Select the ingredients-"),
                                                    value: "default",
                                                  ),
                                                ],
                                                icon: Image.asset(
                                                 
                                                    "assets/dropdown.png",
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Number of Portions",
                                                style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    ElevatedButton(
                                                      style: ButtonStyle(
                                                          elevation:
                                                              MaterialStateProperty
                                                                  .all(5.0)),
                                                      onPressed: () {},
                                                      child: Text("-"),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Container(
                                                      height: 35,
                                                      width: 55,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape: StadiumBorder(
                                                          side: BorderSide(
                                                              color: mainColor),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "2",
                                                            style: TextStyle(
                                                              color: mainColor,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    ElevatedButton(
                                                      style: ButtonStyle(
                                                          elevation:
                                                              MaterialStateProperty
                                                                  .all(5.0)),
                                                      onPressed: () {},
                                                      child: Text("+"),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 200,
                                          width: double.infinity,
                                          child: Stack(
                                            children: [
                                              Container(
                                                width: 120,
                                                decoration: ShapeDecoration(
                                                  color: mainColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(40),
                                                      bottomRight:
                                                          Radius.circular(40),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 20,
                                                  ),
                                                  child: Container(
                                                    height: 160,
                                                    width: double.infinity,
                                                    margin:
                                                        const EdgeInsets.only(
                                                      left: 50,
                                                      right: 40,
                                                    ),
                                                    decoration: ShapeDecoration(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  40),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  40),
                                                          topRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10),
                                                        ),
                                                      ),
                                                      shadows: [
                                                        BoxShadow(
                                                          color: mainColor
                                                              .withOpacity(0.3),
                                                          offset: Offset(0, 5),
                                                          blurRadius: 5,
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Total Price",
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Text(
                                                          "LKR 1500",
                                                          style: TextStyle(
                                                            color: mainColor,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                        SizedBox(height: 10),
                                                        SizedBox(
                                                          width: 200,
                                                          child: ElevatedButton(
                                                              onPressed: () {},
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Image.asset(
                                                                 
                                                                        "assets/add_to_cart.png",
                                                                  ),
                                                                  Text(
                                                                    "Add to Cart",
                                                                  )
                                                                ],
                                                              )),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  right: 20,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                    width: 60,
                                                    height: 60,
                                                    decoration: ShapeDecoration(
                                                      color: Colors.white,
                                                      shadows: [
                                                        BoxShadow(
                                                          color: mainColor
                                                              .withOpacity(0.3),
                                                          offset: Offset(0, 5),
                                                          blurRadius: 5,
                                                        ),
                                                      ],
                                                      shape: CircleBorder(),
                                                    ),
                                                    child: Image.asset(
                                                          "assets/cart_filled.png",
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 20,
                                  ),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: ClipShadow(
                                      clipper: CustomTriangle(),
                                      boxShadow: [
                                        BoxShadow(
                                          color: mainColor,
                                          offset: Offset(0, 5),
                                          blurRadius: 5,
                                        ),
                                      ],
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        color: Colors.white,
                                        child: Image.asset(
                                       
                                            "assets/fav_filled.png",
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
              
              
            ]
          ),
         
          )]
      ));
    
  }
}

class CustomTriangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controlpoint = Offset(size.width * 0, size.height * 0.5);
    Offset endpoint = Offset(size.width * 0.2, size.height * 0.85);
    Offset controlpoint2 = Offset(size.width * 0.33, size.height);
    Offset endpoint2 = Offset(size.width * 0.6, size.height * 0.9);
    Offset controlpoint3 = Offset(size.width * 1.4, size.height * 0.5);
    Offset endpoint3 = Offset(size.width * 0.6, size.height * 0.1);
    Offset controlpoint4 = Offset(size.width * 0.33, size.height * 0);
    Offset endpoint4 = Offset(size.width * 0.2, size.height * 0.15);

    Path path = new Path()
      ..moveTo(size.width * 0.2, size.height * 0.15)
      ..quadraticBezierTo(
        controlpoint.dx,
        controlpoint.dy,
        endpoint.dx,
        endpoint.dy,
      )
      ..quadraticBezierTo(
        controlpoint2.dx,
        controlpoint2.dy,
        endpoint2.dx,
        endpoint2.dy,
      )
      ..quadraticBezierTo(
        controlpoint3.dx,
        controlpoint3.dy,
        endpoint3.dx,
        endpoint3.dy,
      )
      ..quadraticBezierTo(
        controlpoint4.dx,
        controlpoint4.dy,
        endpoint4.dx,
        endpoint4.dy,
      );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
