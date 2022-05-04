import 'package:flutter/material.dart';
import 'package:whatsapp_app_clone/components/ink_icon_button.dart';

import 'package:whatsapp_app_clone/components/tab_bar/main_tab_bar_view.dart';
import 'package:whatsapp_app_clone/components/tab_bar/main_tab_bar.dart';
import 'package:whatsapp_app_clone/data/tab_bar_data.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: tabBarData.length, initialIndex: 0);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(widget.title),
        actions: [
          InkIconButton(icon: Icons.search, onTap: () {}),
          InkIconButton(icon: Icons.more_vert, onTap: () {}),
        ],
        bottom: MainTabBar(
          controller: _tabController,
          children: tabBarData.map((tabBar) => tabBar.tab).toList(),
        ),
      ),
      body: MainTabBarView(
        controller: _tabController,
        children: tabBarData.map((tabBar) => tabBar.tabView).toList(),
      ),
      floatingActionButton: tabBarData[_tabController.index].fab,
    );
  }
}
