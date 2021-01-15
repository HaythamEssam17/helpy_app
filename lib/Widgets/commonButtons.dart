import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:helpy_app/Utils/enums.dart';

class CommonButtons {
  static Widget customButton(
      {Function onPressed, String text, IconData iconData}) {
    return Row(
      children: [
        Expanded(child: Container()),
        // MaterialButton(
        //   onPressed: onPressed,
        //   color: SharedText.appBarColor,
        //   child: Text(text, style: TextStyles.buttonTextStyle()),
        //   height: SharedText.screenHeight * 0.075,
        //   minWidth: SharedText.screenWidth * 0.5,
        //   shape: RoundedRectangleBorder(
        //       borderRadius:
        //           BorderRadius.circular(SharedText.screenWidth * 0.02)),
        // ),
        MaterialButton(
          onPressed: onPressed,
          color: SharedText.appBarColor,
          height: SharedText.screenHeight * 0.1,
          minWidth: SharedText.screenWidth * 0.8,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(SharedText.screenWidth * 0.05)),
          child: Container(
            height: SharedText.screenHeight * 0.1,
            width: SharedText.screenWidth * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Expanded(
                //   flex: 1,
                //   child:
                Container(
                  width: SharedText.screenWidth * 0.2,
                  child: Center(
                    child: Container(
                      height: SharedText.screenHeight * 0.07,
                      width: SharedText.screenHeight * 0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              SharedText.screenWidth * 0.03),
                          color: Colors.white),
                      child: Icon(iconData,
                          color: SharedText.appBarColor,
                          size: SharedText.deviceType == DeviceType.Mobile
                              ? 30.0
                              : 60.0),
                    ),
                  ),
                ),
                // ),
                Expanded(
                    flex: 3,
                    child: Center(
                        child:
                            Text(text, style: TextStyles.buttonTextStyle()))),
              ],
            ),
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }
}
