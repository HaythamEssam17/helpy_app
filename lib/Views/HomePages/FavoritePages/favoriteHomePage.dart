import 'package:flutter/material.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Views/HomePages/CategoryPages/categoryItemHomePage.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonCachedImageWindet.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';

class FavoriteHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FavoriteHomePageState();
}

class FavoriteHomePageState extends State<FavoriteHomePage> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images/filledstar.png',
                          height: SharedText.screenHeight * 0.05,
                          width: SharedText.screenHeight * 0.05),
                      Text('عند إستعراض الفعاليات أنقر علي',
                          style: TextStyles.normalBlackTextStyle()),
                    ],
                  ),
                  Text('لتضاف الفعالية إلي قائمتك المفضلة',
                      style: TextStyles.normalBlackTextStyle()),
                ],
              ),
            ),
            SizedBox(height: SharedText.screenHeight * 0.015),
            GridView.builder(
              itemBuilder: (context, index) {
                return customCard('أسم الفعالية: ${index + 1}',
                    'https://smartfoodandfit.com/wp-content/uploads/2019/01/word-image.jpeg');
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0),
              padding: EdgeInsets.symmetric(
                  horizontal: SharedText.screenWidth * 0.02),
              shrinkWrap: true,
              itemCount: 10,
              physics: NeverScrollableScrollPhysics(),
            ),
            SizedBox(height: SharedText.screenHeight * 0.015),
          ],
        ),
      )),
      bottomNavigationBar: CommonBottomNavBarWidget.navBarWidget(context, () {
        setState(() {
          scaffoldKey.currentState.openDrawer();
        });
      }, true, true),
    );
  }

  Widget customCard(String title, String image) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CategoryItemHomePage()));
      },
      child: Card(
        color: Color(0xffCCCCCC),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SharedText.screenWidth * 0.02,
              vertical: SharedText.screenHeight * 0.02),
          child: Column(
            children: [
              Expanded(
                  child: CommonCachedImaeWidget.productDetailsCachedImage(
                      context,
                      image,
                      SharedText.screenHeight * 0.2,
                      SharedText.screenHeight * 0.2)),
              SizedBox(height: SharedText.screenHeight * 0.01),
              Text(title, style: TextStyles.itemGreyTextStyle())
            ],
          ),
        ),
      ),
    );
  }
}
