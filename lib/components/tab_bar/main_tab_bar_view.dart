import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/utils/scroll_physics.dart';
import 'package:whatsapp_app_clone/screens/tabs/calls_tab.dart';
import 'package:whatsapp_app_clone/screens/tabs/camera_tab.dart';
import 'package:whatsapp_app_clone/screens/tabs/chats_tab.dart';
import 'package:whatsapp_app_clone/screens/tabs/status_tab.dart';

class MainTabBarView extends StatelessWidget {
  final TabController controller;

  const MainTabBarView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      physics: const TabBarViewScrollPhysics(),
      children: const [
        CameraTab(),
        ChatsTab(),
        StatusTab(),
        CallsTab(),
      ],
    );
  }
}
