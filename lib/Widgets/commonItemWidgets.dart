import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Views/HomePages/CategoryPages/categoryItemHomePage.dart';

import 'commonCachedImageWindet.dart';

class CommonItemWidgets {
  static Widget customColumn(
      BuildContext context, String image, String title, Widget widget) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget));
      },
      child: Container(
          height: SharedText.screenHeight * 0.175,
          width: SharedText.screenHeight * 0.175,
          decoration:
              BoxDecoration(border: Border.all(color: SharedText.appBarColor)),
          child: Column(
            children: [
              Expanded(
                child: CommonCachedImaeWidget.productDetailsCachedImage(
                    context,
                    image,
                    SharedText.screenHeight * 0.2,
                    SharedText.screenHeight * 0.2),
              ),
              Text(title,
                  textAlign: TextAlign.center,
                  style: TextStyles.appBarTextStyle())
            ],
          )),
    );
  }

  static Widget customItem(
      BuildContext context, String title, String address, String phone) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SharedText.screenHeight * 0.01),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CategoryItemHomePage()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SharedText.screenWidth * 0.02,
              vertical: SharedText.screenHeight * 0.01),
          decoration: BoxDecoration(
              border: Border.all(color: SharedText.appBarColor, width: 2)),
          child: Row(
            children: [
              CommonCachedImaeWidget.roundedBorderCachedImage(
                  context,
                  'https://creditcards.chase.com/K-Marketplace/images/cardart/united_explorer_card.png',
                  SharedText.screenHeight * 0.1,
                  SharedText.screenWidth * 0.25),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(title, style: TextStyles.appBarTextStyle()),
                        Icon(FontAwesome.circle_empty,
                            color: SharedText.appBarColor)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(address, style: TextStyles.appBarTextStyle()),
                        Icon(Elusive.location, color: SharedText.appBarColor)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(phone, style: TextStyles.appBarTextStyle()),
                        Icon(FontAwesome.circle_empty,
                            color: SharedText.appBarColor)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
