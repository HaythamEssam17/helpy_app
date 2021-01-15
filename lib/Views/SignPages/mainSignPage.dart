import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Views/SignPages/registerPage.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonButtons.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';

import 'loginPage.dart';

class MainSignPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainSignPageState();
}

class MainSignPageState extends State<MainSignPage> {
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
              child: Center(
                child: Text('إذا كنت مشترك سابق في التطبيق\nسجل دخولك من هنا',
                    textAlign: TextAlign.center,
                    style: TextStyles.normalBlackTextStyle()),
              ),
            ),
            SizedBox(height: SharedText.screenHeight * 0.015),
            CommonButtons.customButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                text: 'تسجيل الدخول',
                iconData: FontAwesome.login),
            SizedBox(height: SharedText.screenHeight * 0.025),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SharedText.screenWidth * 0.05),
              child: Center(
                child: Text('إذا كنت مشترك جديد سجل من هنا',
                    textAlign: TextAlign.center,
                    style: TextStyles.normalBlackTextStyle()),
              ),
            ),
            SizedBox(height: SharedText.screenHeight * 0.015),
            CommonButtons.customButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                text: 'إشتراك جديد',
                iconData: Icons.fiber_new),
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
