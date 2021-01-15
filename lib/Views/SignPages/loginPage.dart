import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonButtons.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';
import 'package:helpy_app/Widgets/commonTextFieldClass.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            Center(
                child: Text('تسجيل الدخول',
                    style: TextStyles.titleBlackTextStyle())),
            SizedBox(height: SharedText.screenHeight * 0.025),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SharedText.screenWidth * 0.03),
              margin:
                  EdgeInsets.symmetric(vertical: SharedText.screenWidth * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SharedText.screenWidth * 0.01),
                    child: Text('رقم الهاتف / أسم المستخدم',
                        style: TextStyles.normalBlackTextStyle()),
                  ),
                  CommonTextFieldClass.customContactTextField(
                      hintText: '', controller: userNameController)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SharedText.screenWidth * 0.03),
              margin:
                  EdgeInsets.symmetric(vertical: SharedText.screenWidth * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SharedText.screenWidth * 0.01),
                    child: Text('كلمة السر',
                        style: TextStyles.normalBlackTextStyle()),
                  ),
                  CommonTextFieldClass.customContactTextField(
                    hintText: '',
                  )
                ],
              ),
            ),
            SizedBox(height: SharedText.screenHeight * 0.025),
            CommonButtons.customButton(
                onPressed: () {},
                text: 'تسجيل الدخول',
                iconData: FontAwesome.login),
            SizedBox(height: SharedText.screenHeight * 0.025),
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
