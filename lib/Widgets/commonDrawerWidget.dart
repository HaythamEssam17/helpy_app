import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Views/HomePages/CategoryPages/categoriesListHomePage.dart';
import 'package:helpy_app/Views/HomePages/FavoritePages/favoriteHomePage.dart';
import 'package:helpy_app/Views/HomePages/GovernratePages/governrateChangePage.dart';
import 'package:helpy_app/Views/HomePages/SearchPages/searchHomePage.dart';
import 'package:helpy_app/Views/HomePages/ContactusPages/contactUsHomePage.dart';
import 'package:helpy_app/Views/SignPages/mainSignPage.dart';

class CommonDrawerWidget {
  static Widget drawer(BuildContext context) {
    return Container(
      height: SharedText.screenHeight,
      width: SharedText.screenWidth,
      padding: EdgeInsets.symmetric(
          horizontal: SharedText.screenWidth * 0.025,
          vertical: SharedText.screenHeight * 0.025),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/logo.png',
                    height: SharedText.screenHeight * 0.05,
                    width: SharedText.screenHeight * 0.05,
                    fit: BoxFit.fill),
                Text('أهلا بك في تطبيق',
                    style: TextStyles.titleBlackTextStyle()),
              ],
            ),
            Container(
              height: SharedText.screenHeight * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customRow('كافة التصنيفات', FontAwesome5.book, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoriesListHomePage()));
                  }),
                  customRow('بحث', FontAwesome5.search, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchHomePage()));
                  }),
                  customRow('تواصل معنا', FontAwesome5.phone_square_alt, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactUsHomePage()));
                  }),
                  customRow('المفضلة', FontAwesome5.star, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoriteHomePage()));
                  }),
                  customRow('تغيير المحافظة', Elusive.location, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GovernrateChangePage()));
                  }),
                ],
              ),
            ),
            Container(
              child:
                  customRow('إشتراك الفعاليات', FontAwesome5.plus_square, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainSignPage()));
              }),
            ),
          ],
        ),
      ),
    );
  }

  static Widget customRow(String title, IconData iconData, Function onTap) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 3,
              child: Text(title,
                  textAlign: TextAlign.right,
                  style: TextStyles.titleBlackTextStyle())),
          Expanded(
              flex: 2,
              child: Icon(
                iconData,
                color: SharedText.appBarColor,
              ))
        ],
      ),
    );
  }
}
