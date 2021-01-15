import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Views/HomePages/SearchPages/searchResultsPage.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonButtons.dart';
import 'package:helpy_app/Widgets/commonTextFieldClass.dart';

class SearchAfterSplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchAfterSplashPageState();
}

class SearchAfterSplashPageState extends State<SearchAfterSplashPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: CommonBGWidget.bgWidget(Container(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
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
              Row(
                children: [
                  Expanded(child: Container()),
                  Image.asset('images/image.png',
                      height: SharedText.screenHeight * 0.35,
                      width: SharedText.screenWidth * 0.8,
                      fit: BoxFit.fill),
                  Expanded(child: Container()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/logo.png',
                      height: SharedText.screenHeight * 0.025,
                      width: SharedText.screenHeight * 0.025,
                      fit: BoxFit.fill),
                  Text('أهلا بك في تطبيق',
                      style: TextStyles.normalBlackTextStyle()),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Text('دليلك الشامل للأسواق السورية',
                      style: TextStyles.normalBlackTextStyle()),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(height: SharedText.screenHeight * 0.025),
              CommonTextFieldClass.customSearchText(
                  searchController, 'search...', FontAwesome.search),
              SizedBox(height: SharedText.screenHeight * 0.025),
              CommonButtons.customButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchResultsHomePage()));
                  },
                  text: 'بحث'),
            ],
          ),
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
