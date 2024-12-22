import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';

class DefaultNetworkImage extends StatelessWidget {
  const DefaultNetworkImage({
    super.key, required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: imageUrl,
      progressIndicatorBuilder: (BuildContext, String, DownloadProgress) => Center(child: CircularProgressIndicator(color: MyStyles.whiteColor,)),
    );
  }
}
