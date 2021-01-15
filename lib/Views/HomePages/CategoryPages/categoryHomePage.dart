import 'package:flutter/material.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';
import 'package:helpy_app/Widgets/commonItemWidgets.dart';

import 'categoryEventsPage.dart';

class CategoryHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryHomePageState();
}

class CategoryHomePageState extends State<CategoryHomePage> {
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
        child: Center(
            child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            CommonAppBar.appBar(),
            SizedBox(height: SharedText.screenHeight * 0.015),
            Text('إستعراض: أسم الصنف الرئيسي',
                textAlign: TextAlign.center,
                style: TextStyles.normalBlackTextStyle()),
            SizedBox(height: SharedText.screenHeight * 0.015),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SharedText.screenWidth * 0.05),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      crossAxisCount: 3,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0),
                  itemCount: 100,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => CommonItemWidgets.customColumn(
                      context,
                      'https://www.stylemotivation.com/wp-content/uploads/2015/08/swag-gift-ideas-competition-present-promotional-contest-souvenir-pakistan-02.jpg',
                      'Item ${index + 1}',
                      CategoryEventsPage())),
            ),
            SizedBox(height: SharedText.screenHeight * 0.015),
          ],
        )),
      )),
      bottomNavigationBar: CommonBottomNavBarWidget.navBarWidget(context, () {
        setState(() {
          scaffoldKey.currentState.openDrawer();
        });
      }, false, false),
    );
  }
}
