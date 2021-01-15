import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Views/SplashPage/searchAfterSplashPage.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonButtons.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';

class SuccessfullyRegisterdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SuccessfullyRegisterdPageState();
}

class SuccessfullyRegisterdPageState extends State<SuccessfullyRegisterdPage> {
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
            SizedBox(height: SharedText.screenHeight * 0.05),
            Container(
                height: SharedText.screenHeight * 0.01,
                color: SharedText.appBarColor),
            SizedBox(height: SharedText.screenHeight * 0.05),
            Center(
                child: Text('شكراً لطلب التسجيل\nفي تطبيق',
                    textAlign: TextAlign.center,
                    style: TextStyles.titleBlackTextStyle())),
            SizedBox(height: SharedText.screenHeight * 0.015),
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
            SizedBox(height: SharedText.screenHeight * 0.05),
            Center(
                child: Text('سيتم التواصل معك قريباً',
                    textAlign: TextAlign.center,
                    style: TextStyles.titleBlackTextStyle())),
            SizedBox(height: SharedText.screenHeight * 0.05),
            CommonButtons.customButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchAfterSplashPage()));
                },
                text: 'الصفحةالرئيسية',
                iconData: Elusive.home),
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
