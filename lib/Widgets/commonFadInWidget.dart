import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeInWidget {
  static Widget fadeInWidget(double delay, Widget child) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 400), Tween(begin: 0.0, end: 1.0)),
      Track("translateX").add(
          Duration(milliseconds: 500), Tween(begin: 130.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (200 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(animation["translateX"], 0), child: child),
      ),
    );
  }
}
