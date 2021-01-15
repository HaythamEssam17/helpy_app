import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle textStyle() {
    return TextStyle(
        color: Colors.grey[400],
        fontWeight: FontWeight.w600,
        fontSize: SharedText.screenHeight * 0.025);
  }

  static TextStyle appBarTextStyle() {
    return TextStyle(
        color: SharedText.appBarColor,
        fontWeight: FontWeight.w900,
        fontSize: SharedText.screenHeight * 0.025);
  }

  static TextStyle secondAppBarTextStyle() {
    return TextStyle(
        color: SharedText.appBarSecondColor,
        fontWeight: FontWeight.w900,
        fontSize: SharedText.screenHeight * 0.025);
  }

  static TextStyle buttonTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w900,
        fontSize: SharedText.screenHeight * 0.035);
  }

  static TextStyle categoryTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w900,
        fontSize: SharedText.screenHeight * 0.032);
  }

  static TextStyle blackTextStyle() {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: SharedText.screenHeight * 0.025);
  }

  static TextStyle normalBlackTextStyle() {
    return TextStyle(
        color: Colors.black,
        // fontWeight: FontWeight.w900,
        fontSize: SharedText.screenHeight * 0.025);
  }

  static TextStyle titleBlackTextStyle() {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: SharedText.screenHeight * 0.035);
  }

  static TextStyle titleRedTextStyle() {
    return TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w900,
        fontSize: SharedText.screenHeight * 0.030);
  }

  static TextStyle errorTextStyle() {
    return TextStyle(
        color: Colors.red, fontSize: SharedText.screenHeight * 0.025);
  }

  static TextStyle titleBlueTextStyle() {
    return TextStyle(
        color: SharedText.appBarColor,
        fontWeight: FontWeight.bold,
        fontSize: SharedText.screenHeight * 0.035);
  }

  static TextStyle smallRedTextStyle() {
    return TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontSize: SharedText.screenHeight * 0.020);
  }

  static TextStyle smallBlackTextStyle() {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: SharedText.screenHeight * 0.020);
  }

  static TextStyle smallGreyTextStyle() {
    return TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        fontSize: SharedText.screenHeight * 0.020);
  }

  static TextStyle itemGreyTextStyle() {
    return TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.grey[700],
        fontSize: SharedText.screenHeight * 0.025);
  }

  static TextStyle smallBlueTextStyle() {
    return TextStyle(
        color: SharedText.appBarColor,
        fontWeight: FontWeight.bold,
        fontSize: SharedText.screenHeight * 0.020);
  }

  static TextStyle smallButtonTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w900,
        fontSize: SharedText.screenHeight * 0.020);
  }

  static TextStyle appTitleGreyTextStyle() {
    return TextStyle(
        color: SharedText.appBarSecondColor,
        fontWeight: FontWeight.bold,
        fontSize: SharedText.screenHeight * 0.04);
  }

  static TextStyle titleText() {
    return TextStyle(
        color: SharedText.appBarSecondColor,
        fontWeight: FontWeight.bold,
        fontSize: SharedText.screenHeight * 0.03);
  }
}
