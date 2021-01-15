import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Views/HomePages/CategoryPages/categoriesListHomePage.dart';
import 'package:helpy_app/Views/HomePages/SearchPages/searchHomePage.dart';

class CommonBottomNavBarWidget {
  static Widget navBarWidget(BuildContext context, Function onMenuPressed,
      bool isSearchOpened, bool isCategoryOpened) {
    Color color = SharedText.appBarColor;
    return Container(
      height: SharedText.screenHeight * 0.1,
      width: SharedText.screenWidth,
      color: SharedText.bgLightColor,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: IconButton(
                icon: Icon(Typicons.menu, color: color),
                onPressed: onMenuPressed),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
                icon: Icon(FontAwesome5.search, color: color),
                onPressed: () {
                  if (!isSearchOpened)
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchHomePage()));
                }),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
                icon: Icon(FontAwesome5.book, color: color),
                onPressed: () {
                  if (!isCategoryOpened)
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoriesListHomePage()));
                }),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
                icon: Icon(FontAwesome5.reply, color: color),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ],
      ),
    );
  }
}
