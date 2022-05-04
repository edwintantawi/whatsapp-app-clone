import 'package:flutter/material.dart';

class MainTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController controller;
  final List<Widget> children;

  const MainTabBar({Key? key, required this.controller, required this.children})
      : super(key: key);

  @override
  get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: false,
      indicatorColor: Colors.white,
      padding: EdgeInsets.zero,
      tabs: children,
    );
  }
}
