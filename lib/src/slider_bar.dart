import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/src/slider_direction.dart';

///
/// Build and Align the Menu widget based on the slide open type
///
class SliderBar extends StatelessWidget {
  final SlideDirection slideDirection;
  final double sliderMenuOpenSize;
  final Widget sliderMenu;

  const SliderBar(
      {Key? key,
      required this.slideDirection,
      required this.sliderMenuOpenSize,
      required this.sliderMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var container = Container(
      width: sliderMenuOpenSize,
      child: sliderMenu,
    );
    switch (slideDirection) {
      case SlideDirection.LEFT_TO_RIGHT:
        return container;
      case SlideDirection.RIGHT_TO_LEFT:
        return Positioned(right: 0, top: 0, bottom: 0, child: container);
      case SlideDirection.TOP_TO_BOTTOM:
        return Positioned(right: 0, left: 0, top: 0, child: container);
    }
  }
}
