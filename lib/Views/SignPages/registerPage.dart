import 'package:flutter/material.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonButtons.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';
import 'package:helpy_app/Widgets/commonTextFieldClass.dart';

import 'successfullyRegisterdPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String dropdownValue;

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
                child: Text('تسجيل مستخدم جديد',
                    textAlign: TextAlign.center,
                    style: TextStyles.titleBlackTextStyle())),
            SizedBox(height: SharedText.screenHeight * 0.015),
            Center(
                child: Text('يرجي ملئ النموذج التالي',
                    textAlign: TextAlign.center,
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
                    child: Text('أسم الفعالية',
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
                    child: Text('رقم الموبايل',
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
                    child: Text('رقم الموبايل',
                        style: TextStyles.normalBlackTextStyle()),
                  ),
                  customDropDown(),
                ],
              ),
            ),
            SizedBox(height: SharedText.screenHeight * 0.015),
            CommonButtons.customButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SuccessfullyRegisterdPage()));
                },
                text: 'إشتراك جديد',
                iconData: Icons.fiber_new),
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

  Widget customDropDown() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SharedText.screenWidth * 0.02),
          color: Colors.white,
          border: Border.all(color: SharedText.appBarColor, width: 3)),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Image.asset('images/down.png',
            height: SharedText.screenHeight * 0.04,
            width: SharedText.screenHeight * 0.04),
        isExpanded: true,
        hint: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SharedText.screenWidth * 0.025),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text('المحافظة', style: TextStyles.smallGreyTextStyle()),
          ),
        ),
        underline: Container(),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(value, style: TextStyles.appBarTextStyle()),
            ),
          );
        }).toList(),
      ),
    );
  }
}
