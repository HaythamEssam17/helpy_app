import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/web_symbols_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonButtons.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';
import 'package:helpy_app/Widgets/commonTextFieldClass.dart';

class SearchHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchHomePageState();
}

class SearchHomePageState extends State<SearchHomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController searchController = TextEditingController();
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
      bottomNavigationBar: CommonBottomNavBarWidget.navBarWidget(context, () {
        setState(() {
          scaffoldKey.currentState.openDrawer();
        });
      }, true, false),
      body: CommonBGWidget.bgWidget(Container(
        child: Center(
            child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            CommonAppBar.appBar(),
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SharedText.screenWidth * 0.05)),
            Center(
                child: Text('أستخدم البحث السريع',
                    style: TextStyles.titleBlackTextStyle())),
            SizedBox(height: SharedText.screenHeight * 0.015),
            CommonTextFieldClass.customSearchText(
                searchController, 'search...', FontAwesome.search),
            SizedBox(height: SharedText.screenHeight * 0.015),
            CommonButtons.customButton(
                onPressed: () {}, text: 'بحث', iconData: WebSymbols.search),
            SizedBox(height: SharedText.screenHeight * 0.015),
            Container(
                height: SharedText.screenHeight * 0.01,
                color: SharedText.appBarColor),
            Center(
                child: Text('أو أختر معايير البحث للحصول علي نتائج أكثر دقه',
                    style: TextStyles.normalBlackTextStyle())),
            SizedBox(height: SharedText.screenHeight * 0.015),
            customDropDown(),
            SizedBox(height: SharedText.screenHeight * 0.015),
            customDropDown(),
            SizedBox(height: SharedText.screenHeight * 0.015),
            customDropDown(),
            SizedBox(height: SharedText.screenHeight * 0.015),
            CommonButtons.customButton(
                onPressed: () {}, text: 'بحث', iconData: WebSymbols.search),
            SizedBox(height: SharedText.screenHeight * 0.015),
          ],
        )),
      )),
    );
  }

  Widget customDropDown() {
    return Row(
      children: [
        Expanded(child: Container()),
        Container(
          width: SharedText.screenWidth * 0.8,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(SharedText.screenWidth * 0.02)),
            color: Colors.grey[100],
            elevation: 0.0,
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: Image.asset('images/down.png',
                  height: SharedText.screenHeight * 0.04,
                  width: SharedText.screenHeight * 0.04),
              isExpanded: true,
              hint: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SharedText.screenWidth * 0.025),
                child: Align(
                  alignment: Alignment.centerRight,
                  child:
                      Text('المحافظة', style: TextStyles.smallGreyTextStyle()),
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
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }
}
