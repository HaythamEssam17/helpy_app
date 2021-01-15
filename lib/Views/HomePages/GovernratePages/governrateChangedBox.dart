import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Utils/enums.dart';

class GovernrateChangedBox extends StatefulWidget {
  final Function onTap;
  final bool isSelected;
  final String title;

  GovernrateChangedBox({this.isSelected, this.onTap, this.title});

  @override
  State<StatefulWidget> createState() => GovernrateChangedBoxState();
}

class GovernrateChangedBoxState extends State<GovernrateChangedBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(widget.title,
                    // textAlign: TextAlign.right,
                    style: widget.isSelected
                        ? TextStyles.titleBlueTextStyle()
                        : TextStyles.blackTextStyle()),
                SizedBox(width: SharedText.screenWidth * 0.05),
              ],
            ),
          ),
          Icon(FontAwesome.circle_empty,
              color: widget.isSelected ? SharedText.appBarColor : Colors.black,
              size: SharedText.deviceType == DeviceType.Mobile ? 25.0 : 50.0),
          SizedBox(width: SharedText.screenWidth * 0.05),
        ],
      ),
    );
  }
}
