import 'package:flutter/material.dart';

class MainTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController controller;

  const MainTabBar({Key? key, required this.controller}) : super(key: key);

  @override
  get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    double tabWIdth = (MediaQuery.of(context).size.width - 20) / 5;

    return TabBar(
      controller: controller,
      isScrollable: true,
      indicatorColor: Colors.white,
      tabs: [
        const SizedBox(
          width: 20,
          child: Tab(icon: Icon(Icons.camera_alt_rounded)),
        ),
        SizedBox(
          width: tabWIdth,
          child: const Tab(text: 'CHATS'),
        ),
        SizedBox(
          width: tabWIdth,
          child: const Tab(text: 'STATUS'),
        ),
        SizedBox(
          width: tabWIdth,
          child: const Tab(text: 'CALLS'),
        ),
      ],
    );
  }
}
