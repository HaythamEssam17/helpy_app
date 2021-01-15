import 'package:helpy_app/Helpers/textStyles.dart';
import 'package:flutter/material.dart';

class FunkyOverlay extends StatefulWidget {
  final String title;
  final String image;
  FunkyOverlay({this.title, this.image, Key key});

  @override
  State<StatefulWidget> createState() => FunkyOverlayState();
}

class FunkyOverlayState extends State<FunkyOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    scaleAnimation = CurvedAnimation(parent: controller, curve: Curves.linear);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return new Center(
      child: new Material(
        color: Colors.transparent,
        child: new ScaleTransition(
          scale: scaleAnimation,
          child: new Container(
            width: size.width * 0.8,
            height: 220.0,
            decoration: new ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: new Padding(
              padding: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Column(
                  children: <Widget>[
                    new Image.asset(widget.image, height: 100.0, width: 100.0),
                    new Spacer(),
                    new Text(widget.title, style: TextStyles.blackTextStyle())
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
