import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageRes extends StatelessWidget {
  const ImageRes({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox.fromSize(
        size: Size.fromRadius(70), // Image radius
        child: CachedNetworkImage(
          imageUrl: imageUrl!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
