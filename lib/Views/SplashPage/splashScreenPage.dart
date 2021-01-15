import 'dart:async';

import 'package:flutter/material.dart';
import 'package:helpy_app/Helpers/sharedText.dart';
import 'package:helpy_app/Widgets/commonBGWidget.dart';

import 'searchAfterSplashPage.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenPageState();
}

class SplashScreenPageState extends State<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  goToNextpage() async {
    return Timer(
        Duration(milliseconds: 4500),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => SearchAfterSplashPage())));
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 4000));
    scaleAnimation = CurvedAnimation(parent: controller, curve: Curves.linear);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
    goToNextpage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBGWidget.bgWidget(Center(
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Center(
            child: Image.asset('images/logo.png',
                fit: BoxFit.fill,
                height: SharedText.screenHeight * 0.35,
                width: SharedText.screenHeight * 0.35),
          ),
        ),
      )),
    );
  }
}
