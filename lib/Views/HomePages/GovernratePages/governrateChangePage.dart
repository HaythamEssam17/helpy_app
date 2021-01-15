import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonButtons.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';

import 'governrateCasePage.dart';

class GovernrateChangePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GovernrateChangePageState();
}

class GovernrateChangePageState extends State<GovernrateChangePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Container(
        height: SharedText.screenHeight,
        width: SharedText.screenWidth * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(SharedText.screenWidth * 0.1),
            topRight: Radius.circular(SharedText.screenWidth * 0.1),
          ),
          gradient: LinearGradient(
              colors: [SharedText.bgLightColor, SharedText.bgDarkColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: CommonDrawerWidget.drawer(context),
      ),
      body: CommonBGWidget.bgWidget(Container(
        child: ListView(
          children: [
            CommonAppBar.appBar(),
            SizedBox(height: SharedText.screenHeight * 0.015),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SharedText.screenWidth * 0.05),
              child: Text('تغيير المحافظة',
                  textAlign: TextAlign.right,
                  style: TextStyles.titleBlackTextStyle()),
            ),
            SizedBox(height: SharedText.screenHeight * 0.015),
            Container(
                height: SharedText.screenHeight * 0.5,
                width: SharedText.screenWidth,
                alignment: Alignment.centerRight,
                child: GovernrateCasePage()),
            SizedBox(height: SharedText.screenHeight * 0.015),
            CommonButtons.customButton(
                onPressed: () {},
                text: 'حفظ التغييرات',
                iconData: FontAwesome5.save),
            SizedBox(height: SharedText.screenHeight * 0.025),
          ],
        ),
      )),
      bottomNavigationBar: CommonBottomNavBarWidget.navBarWidget(context, () {
        setState(() {
          scaffoldKey.currentState.openDrawer();
        });
      }, false, false),
    );
  }
}
