import 'package:flutter/material.dart';
import 'package:helpy_app/Helpers/sharedText.dart';

class CommonBGWidget {
  static bgWidget(Widget child) {
    return Container(
      height: SharedText.screenHeight,
      width: SharedText.screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [SharedText.bgLightColor, SharedText.bgDarkColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: child,
    );
  }
}
