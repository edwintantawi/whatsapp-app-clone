import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/models/tab_content.dart';
import 'package:whatsapp_app_clone/screens/tab_views/calls_tab.dart';
import 'package:whatsapp_app_clone/screens/tab_views/chats_tab.dart';
import 'package:whatsapp_app_clone/screens/tab_views/status_tab.dart';
import 'package:whatsapp_app_clone/components/floating_action_button/main_fab.dart';

List<TabContent> tabBarData = [
  TabContent(
    tab: const Tab(text: 'CHATS'),
    tabView: const ChatsTab(),
    fab: MainFloatingActionButton(
      icon: Icons.message,
      onPressed: () {},
    ),
  ),
  TabContent(
    tab: const Tab(text: 'STATUS'),
    tabView: const StatusTab(),
    fab: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MainFloatingActionButton(
          mini: true,
          icon: Icons.edit,
          onPressed: () {},
        ),
        const SizedBox(height: 8),
        MainFloatingActionButton(
          icon: Icons.camera_alt_rounded,
          onPressed: () {},
        ),
      ],
    ),
  ),
  TabContent(
    tab: const Tab(text: 'CALLS'),
    tabView: const CallsTab(),
    fab: MainFloatingActionButton(
      icon: Icons.add_call,
      onPressed: () {},
    ),
  ),
];
