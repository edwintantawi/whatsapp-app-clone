import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/utils/scroll_physics.dart';

class MainTabBarView extends StatelessWidget {
  final TabController controller;
  final List<Widget> children;

  const MainTabBarView({
    Key? key,
    required this.controller,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      physics: const TabBarViewScrollPhysics(),
      children: children,
    );
  }
}
