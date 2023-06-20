// model for slide update

import 'package:langlung/component/Concept1Slider/SliderWidget/lib/Constants/constants.dart';

class SlideUpdate {
  final UpdateType updateType;
  final SlideDirection? direction;
  final double? slidePercent;

  SlideUpdate(
    this.direction,
    this.slidePercent,
    this.updateType,
  );
}
