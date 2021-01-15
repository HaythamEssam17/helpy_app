import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Views/HomePages/CategoryPages/categoryItemHomePage.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';

class SearchResultsHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchResultsHomePageState();
}

class SearchResultsHomePageState extends State<SearchResultsHomePage> {
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
                child: Text('نتائج الحبث عن: بحث',
                    style: TextStyles.titleBlackTextStyle())),
            SizedBox(height: SharedText.screenHeight * 0.015),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SharedText.screenWidth * 0.05),
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      customCard('Item: ${index + 1}'),
                ),
              ),
            ),
          ],
        )),
      )),
    );
  }

  Widget customCard(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SharedText.screenHeight * 0.01),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CategoryItemHomePage()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SharedText.screenWidth * 0.02,
              vertical: SharedText.screenHeight * 0.02),
          decoration: BoxDecoration(
              border: Border.all(color: SharedText.appBarColor, width: 2)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(title, style: TextStyles.appBarTextStyle()),
              Icon(FontAwesome.circle_empty, color: SharedText.appBarColor)
            ],
          ),
        ),
      ),
    );
  }
}
