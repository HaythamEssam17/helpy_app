import 'dart:async';

import 'package:flutter/material.dart';

import 'commonFunckyOverlay.dart';

class CommonFunckyOverlayVoidView {
  static void openFunky(String title, String image, BuildContext context) {
    OverlayEntry overlayEntry = OverlayEntry(
        builder: (BuildContext context) => FunkyOverlay(
              title: title,
              image: image,
            ));
    Navigator.of(context).overlay.insert(overlayEntry);
    Timer(Duration(milliseconds: 2500), () => overlayEntry.remove());
  }
}
