import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'commonSpinKit.dart';

class CommonCachedImaeWidget {
  static Widget homeCachedImage(
      BuildContext context, String imageUrl, double height, double width) {
    String image = imageUrl.length == 0
        ? 'https://media.timeout.com/images/105473507/image.jpg'
        : imageUrl;
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SharedText.screenWidth * 0.07),
          image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
        ),
      ),
      placeholder: (context, img) => CommonSpinKit.customSpinKitRing(),
      errorWidget: (context, url, error) => ClipOval(
        child: Image.asset(
          'images/logo.png',
          fit: BoxFit.fill,
          height: height,
          width: width,
        ),
      ),
    );
  }

  static Widget productDetailsCachedImage(
      BuildContext context, String imageUrl, double height, double width) {
    String image = imageUrl.length == 0
        ? 'https://media.timeout.com/images/105473507/image.jpg'
        : imageUrl;
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(image: imageProvider, fit: BoxFit.fill)),
      ),
      placeholder: (context, img) => CommonSpinKit.customSpinKitRing(),
      errorWidget: (context, url, error) => ClipOval(
        child: Image.asset(
          'images/logo.png',
          fit: BoxFit.fill,
          height: height,
          width: width,
        ),
      ),
    );
  }

  static Widget roundedBorderCachedImage(
      BuildContext context, String imageUrl, double height, double width) {
    String image = imageUrl.length == 0
        ? 'https://media.timeout.com/images/105473507/image.jpg'
        : imageUrl;
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SharedText.screenWidth * 0.02),
          image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
        ),
      ),
      placeholder: (context, img) => CommonSpinKit.customSpinKitRing(),
      errorWidget: (context, url, error) => ClipOval(
        child: Image.asset(
          'images/logo.png',
          fit: BoxFit.fill,
          height: height,
          width: width,
        ),
      ),
    );
  }
}
