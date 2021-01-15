import 'package:flutter/material.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:helpy_app/Widgets/commonAppBar.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';
import 'package:helpy_app/Widgets/commonBottomNavBarWidget.dart';
import 'package:helpy_app/Widgets/commonDrawerWidget.dart';
import 'package:helpy_app/Widgets/commonTextFieldClass.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ContactUsHomePageState();
}

class ContactUsHomePageState extends State<ContactUsHomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController nameController = TextEditingController();

  _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _openFacebook(String fbProtocolUrl) async {
    if (await canLaunch("fb://")) {
      await launch("fb://" + fbProtocolUrl);
    } else {
      throw 'Could not launch $fbProtocolUrl';
    }
  }

  _openWhatsapp(String phone) async {
    if (await canLaunch("https://api.whatsapp.com/send?phone=$phone")) {
      await launch("https://api.whatsapp.com/send?phone=" + phone);
    } else {
      throw 'Could not launch $phone';
    }
  }

  _openInstagram(String profile) async {
    var url = 'https://www.instagram.com/<$profile>/';

    if (await canLaunch(url)) {
      await launch(url, universalLinksOnly: true);
    } else {
      throw 'There was a problem to open the url: $url';
    }
  }

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
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyles.smallBlueTextStyle()),
            ),
            SizedBox(height: SharedText.screenHeight * 0.015),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SharedText.screenWidth * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customImage('images/facebook.png', () {
                    setState(() {
                      _openFacebook(
                          'Nurseries.Schools.Activities.Doctors.Toysƒ');
                    });
                  }),
                  SizedBox(width: SharedText.screenWidth * 0.025),
                  customImage('images/whatsapp.png', () {
                    setState(() {
                      _openWhatsapp('01033951195');
                    });
                  }),
                  SizedBox(width: SharedText.screenWidth * 0.025),
                  customImage('images/instagram.png', () {
                    setState(() {
                      _openInstagram('');
                    });
                  }),
                  SizedBox(width: SharedText.screenWidth * 0.025),
                  customImage('images/iphone.png', () {
                    setState(() {
                      _makePhoneCall('tel:01033951195');
                    });
                  }),
                ],
              ),
            ),
            SizedBox(height: SharedText.screenHeight * 0.015),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: SharedText.screenHeight * 0.02,
                  horizontal: SharedText.screenWidth * 0.05),
              padding: EdgeInsets.symmetric(
                  vertical: SharedText.screenHeight * 0.02,
                  horizontal: SharedText.screenWidth * 0.02),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SharedText.screenWidth * 0.01),
                    child: Text('نموذج الأتصال',
                        style: TextStyles.blackTextStyle()),
                  ),
                  SizedBox(height: SharedText.screenHeight * 0.005),
                  CommonTextFieldClass.customContactTextField(
                      controller: nameController, hintText: 'الأسم'),
                  SizedBox(height: SharedText.screenHeight * 0.005),
                  CommonTextFieldClass.customContactTextField(
                      controller: nameController,
                      hintText: 'البريد الألكتروني'),
                  SizedBox(height: SharedText.screenHeight * 0.005),
                  CommonTextFieldClass.customContactTextField(
                      controller: nameController, hintText: 'رقم الهاتف'),
                  SizedBox(height: SharedText.screenHeight * 0.005),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: SharedText.screenHeight * 0.2,
                            child: CommonTextFieldClass.customContactTextField(
                                controller: nameController,
                                hintText: 'الرسالة',
                                maxLines: 3)),
                      ),
                      SizedBox(width: SharedText.screenWidth * 0.02),
                      MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: () {},
                        color: SharedText.appBarColor,
                        child: RotatedBox(
                            quarterTurns: -1,
                            child: Text('إرسال',
                                style: TextStyles.buttonTextStyle())),
                        height: SharedText.screenHeight * 0.18,
                        minWidth: SharedText.screenWidth * 0.1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                SharedText.screenWidth * 0.02)),
                      )
                    ],
                  ),
                  SizedBox(height: SharedText.screenHeight * 0.015),
                ],
              ),
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

  Widget customImage(String image, Function onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: SharedText.screenHeight * 0.005,
            horizontal: SharedText.screenHeight * 0.005),
        height: SharedText.screenHeight * 0.075,
        width: SharedText.screenHeight * 0.075,
        decoration: BoxDecoration(
            color: SharedText.appBarColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Image.asset(
            image,
            fit: BoxFit.fill,
            color: SharedText.bgLightColor,
            height: SharedText.screenHeight * 0.07,
            width: SharedText.screenHeight * 0.07,
          ),
        ),
      ),
    );
  }
}
