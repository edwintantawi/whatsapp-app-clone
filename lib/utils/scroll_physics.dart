import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class TabBarViewScrollPhysics extends ScrollPhysics {
  const TabBarViewScrollPhysics({ScrollPhysics? parent})
      : super(parent: parent);

  @override
  TabBarViewScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return TabBarViewScrollPhysics(parent: buildParent(ancestor)!);
  }

  @override
  SpringDescription get spring => const SpringDescription(
        mass: 50,
        stiffness: 100,
        damping: 1,
      );
}
