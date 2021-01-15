import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CommonSpinKit {
  static Widget customSpinKitBounce({Color color, double height}) {
    return new SpinKitThreeBounce(
      size: height,
      itemBuilder: (_, int index) {
        return DecoratedBox(decoration: BoxDecoration(color: color));
      },
    );
  }

  static Widget customSpinKitWave({double height}) {
    return new SpinKitWave(
      size: height,
      itemBuilder: (_, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
              color: index.isEven ? SharedText.appBarColor : Colors.yellow),
        );
      },
    );
  }

  static Widget customSpinKitDoubleBounce({Color color, double size}) {
    return new SpinKitDoubleBounce(color: color, size: size);
  }

  static Widget customSpinKitRing({Color color, double size}) {
    return new SpinKitRing(
        color: SharedText.appBarColor,
        size: SharedText.deviceType == DeviceType.Mobile ? 30.0 : 60.0,
        lineWidth: 3.0);
  }
}
