import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:flutter/material.dart';
import 'package:helpy_app/Helpers/textStyles.dart';

class CommonAppBar {
  static Widget appBar({bool isToShowTexts = true}) {
    return Column(
      children: [
        SizedBox(height: SharedText.screenHeight * 0.025),
        Row(
          children: [
            Expanded(child: Container()),
            Image.asset('images/logo.png',
                height: SharedText.screenHeight * 0.125,
                width: SharedText.screenHeight * 0.125,
                fit: BoxFit.fill),
            Expanded(child: Container()),
          ],
        ),
        if (isToShowTexts) SizedBox(height: SharedText.screenHeight * 0.015),
        if (isToShowTexts)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/logo.png',
                  height: SharedText.screenHeight * 0.025,
                  width: SharedText.screenHeight * 0.025,
                  fit: BoxFit.fill),
              Text('أهلا بك في تطبيق',
                  style: TextStyles.normalBlackTextStyle()),
            ],
          ),
        if (isToShowTexts)
          Row(
            children: [
              Expanded(child: Container()),
              Text('دليلك الشامل للأسواق السورية',
                  style: TextStyles.normalBlackTextStyle()),
              Expanded(child: Container()),
            ],
          ),
        SizedBox(height: SharedText.screenHeight * 0.015),
        Container(
            height: SharedText.screenHeight * 0.01,
            color: SharedText.appBarColor),
      ],
    );
  }
}
