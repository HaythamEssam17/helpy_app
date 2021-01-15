import 'package:carousel_pro/carousel_pro.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CommonCarouselSlider {
  static Widget customCarouselSlider(List<Widget> items) {
    return new CarouselSlider(
      items: items,
      options: CarouselOptions(
          height: SharedText.screenHeight * 0.30,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal),
    );
  }

  static Widget customCarouselPro(List<Widget> items) {
    return SizedBox(
        height: SharedText.screenHeight * 0.30,
        child: Carousel(
          images: items,
          dotSize: 15.0,
          dotSpacing: 30.0,
          dotIncreasedColor: SharedText.appBarSecondColor,
          dotPosition: DotPosition.bottomLeft,
          dotColor: Colors.white,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.transparent,
          borderRadius: true,
        ));
  }
}
