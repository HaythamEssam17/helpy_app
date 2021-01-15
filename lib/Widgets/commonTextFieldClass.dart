import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:flutter/material.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Utils/enums.dart';

class CommonTextFieldClass {
  static Widget customSearchText(
      TextEditingController controller, String hint, IconData iconData) {
    return Container(
      child: Row(
        children: [
          Expanded(child: Container()),
          Container(
            height: SharedText.screenHeight * 0.075,
            width: SharedText.screenWidth * 0.8,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(SharedText.screenWidth * 0.02)),
            child: Row(
              children: [
                Container(
                  height: SharedText.screenHeight * 0.075,
                  padding: EdgeInsets.symmetric(
                      horizontal: SharedText.screenWidth * 0.03,
                      vertical: SharedText.screenHeight * 0.02),
                  decoration: BoxDecoration(
                      color: SharedText.appBarColor,
                      borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(SharedText.screenWidth * 0.02),
                          bottomLeft:
                              Radius.circular(SharedText.screenWidth * 0.02))),
                  child: Icon(iconData,
                      color: Colors.white,
                      size: SharedText.deviceType == DeviceType.Mobile
                          ? 25.0
                          : 50.0),
                ),
                SizedBox(width: SharedText.screenWidth * 0.02),
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        hintText: hint, border: InputBorder.none),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  static Widget customContactTextField(
      {TextEditingController controller, String hintText, int maxLines = 1}) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: SharedText.appBarColor, width: 3),
            borderRadius: BorderRadius.circular(SharedText.screenWidth * 0.02),
            color: Colors.grey[200]),
        padding:
            EdgeInsets.symmetric(horizontal: SharedText.screenWidth * 0.03),
        margin: EdgeInsets.symmetric(vertical: SharedText.screenWidth * 0.01),
        child: TextField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyles.textStyle(),
          ),
        ),
      ),
    );
  }
}
