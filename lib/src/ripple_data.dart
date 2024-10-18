import 'package:flutter/material.dart';

class RippleData {
  RippleData({
    required this.context,
    required this.color,
    required this.animationDuration,
    required this.delay,
    required this.shape,
    required this.inflateMultiplier,
  });

  late BuildContext context;
  late Color color;
  late Duration animationDuration;
  late Duration delay;
  late BoxShape shape;
  late double inflateMultiplier;

  late Rect rect;

  Widget toWidget() {
    if (rect == null) {
      return Container();
    }

    return AnimatedPositioned(
      left: rect!.left,
      top: rect!.top,
      right: MediaQuery.of(context).size.width - rect!.right,
      bottom: MediaQuery.of(context).size.height - rect!.bottom,
      child: Container(
        decoration: BoxDecoration(
          shape: shape,
          color: color,
        ),
      ),
      duration: animationDuration,
    );
  }
}
