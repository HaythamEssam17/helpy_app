import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:flutter/material.dart';

class CommonSnackBarWidget {
  static showInSnackBar(String text, GlobalKey<ScaffoldState> _scaffoldKey) {
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
        backgroundColor: SharedText.appBarColor,
        content: new Text(text, style: TextStyles.buttonTextStyle())));
  }
}
