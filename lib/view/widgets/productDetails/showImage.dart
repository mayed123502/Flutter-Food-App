import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.52,
      width: MediaQuery.of(context).size.width,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
