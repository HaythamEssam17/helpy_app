import 'package:flutter/material.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonCachedImageWindet.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';
import 'package:helpy_app/Widgets/commonItemWidgets.dart';

import 'categoryHomePage.dart';

class CategoriesListHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoriesListHomePageState();
}

class CategoriesListHomePageState extends State<CategoriesListHomePage> {
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
                      'https://smartfoodandfit.com/wp-content/uploads/2019/01/word-image.jpeg',
                      'Item ${index + 1}',
                      CategoryHomePage())),
            ),
            SizedBox(height: SharedText.screenHeight * 0.025),
          ],
        )),
      )),
      bottomNavigationBar: CommonBottomNavBarWidget.navBarWidget(context, () {
        setState(() {
          scaffoldKey.currentState.openDrawer();
        });
      }, false, true),
    );
  }

  Widget customColumn(String image, String title) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CategoryHomePage()));
      },
      child: Container(
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
              Text(title, style: TextStyles.appBarTextStyle())
            ],
          )),
    );
  }
}
