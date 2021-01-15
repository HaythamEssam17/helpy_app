import 'package:helpy_app/Utils/enums.dart';
import 'package:flutter/material.dart';

class DeviceInfo {
  final Orientation orientation;
  final DeviceType deviceType;
  final double screenHeight;
  final double screenWidth;
  final double widgetHeight;
  final double widgetWidth;

  DeviceInfo(
      {this.orientation,
      this.deviceType,
      this.screenHeight,
      this.screenWidth,
      this.widgetHeight,
      this.widgetWidth});
}
