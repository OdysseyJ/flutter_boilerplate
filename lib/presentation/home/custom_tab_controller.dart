import 'package:flutter/material.dart';

class NoAnimationTabController extends TabController {
  NoAnimationTabController(
      {int initialIndex = 0,
      @required int length,
      @required TickerProvider vsync})
      : super(initialIndex: initialIndex, length: length, vsync: vsync);

  @override
  void animateTo(int value,
      {Duration duration = kTabScrollDuration, Curve curve = Curves.ease}) {
    super.animateTo(value, duration: null, curve: null);
  }
}
