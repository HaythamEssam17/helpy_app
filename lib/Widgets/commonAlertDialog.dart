import 'package:flutter/material.dart';

class COmmonAlertDialog {
  static showAlertDialog(BuildContext context, String contentText) {
    Widget continueButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Warning"),
      content: Text(contentText),
      actions: [continueButton],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
