import 'package:flutter/material.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';
import 'package:helpy_app/Widgets/commonItemWidgets.dart';

class CategoryEventsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryEventsPageState();
}

class CategoryEventsPageState extends State<CategoryEventsPage> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonItemWidgets.customColumn(
                    context,
                    'https://d1kmb20dpnlpo4.cloudfront.net/wp-content/uploads/2014/07/06111122/BlogHer-Swag-Bag-Giveaway-Image.jpg',
                    'عنوان التصنيف',
                    Container()),
                CommonItemWidgets.customColumn(
                    context,
                    'https://d1kmb20dpnlpo4.cloudfront.net/wp-content/uploads/2014/07/06111122/BlogHer-Swag-Bag-Giveaway-Image.jpg',
                    'عنوان التصنيف',
                    Container()),
              ],
            ),
            SizedBox(height: SharedText.screenHeight * 0.015),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SharedText.screenWidth * 0.05),
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CommonItemWidgets.customItem(
                      context,
                      'الفعالية ${index + 1}',
                      'Address',
                      '+201033951195'),
                ),
              ),
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
