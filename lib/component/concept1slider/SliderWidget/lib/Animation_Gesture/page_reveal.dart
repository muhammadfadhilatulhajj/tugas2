import 'package:flutter/material.dart';
import 'package:langlung/component/Concept1Slider/SliderWidget/lib/Clipper/circular_reveal_clipper.dart';

/// This class reveals the next page in the circular form.

class PageReveal extends StatelessWidget {
  final double? revealPercent;
  final Widget? child;

  //Constructor
  const PageReveal({super.key, this.revealPercent, this.child});

  @override
  Widget build(BuildContext context) {
    //ClipOval cuts the page to circular shape.
    return ClipOval(
      clipper: CircularRevealClipper(revealPercent: revealPercent),
      child: child,
    );
  }
}
