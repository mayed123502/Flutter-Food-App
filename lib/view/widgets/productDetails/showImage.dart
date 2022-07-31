import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/hamburger.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}