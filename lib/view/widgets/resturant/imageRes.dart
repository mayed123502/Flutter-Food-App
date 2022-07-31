import 'package:flutter/material.dart';

class ImageRes extends StatelessWidget {
  const ImageRes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox.fromSize(
        size: Size.fromRadius(70), // Image radius
        child: Image.asset('assets/10.jpeg', fit: BoxFit.cover),
      ),
    );
  }
}