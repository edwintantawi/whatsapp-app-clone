import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/components/tab_bar/main_tab_bar_view.dart';
import 'package:whatsapp_app_clone/components/tab_bar/main_tab_bar.dart';

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
    _tabController = TabController(vsync: this, length: 4, initialIndex: 1);
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
        bottom: MainTabBar(controller: _tabController),
      ),
      body: MainTabBarView(controller: _tabController),
      floatingActionButton: _fabButtons(),
    );
  }

  // TODO: split floating action button widget
  Widget? _fabButtons() {
    switch (_tabController.index) {
      case 1:
        return const FloatingActionButton(
          onPressed: null,
          foregroundColor: Colors.white,
          child: Icon(Icons.message, size: 20.0),
        );
      case 2:
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              mini: true,
              onPressed: null,
              backgroundColor: Colors.grey[200],
              elevation: 5,
              child: const Icon(Icons.edit, size: 18.0),
              heroTag: 'btn',
            ),
            const SizedBox(height: 8),
            const FloatingActionButton(
              onPressed: null,
              foregroundColor: Colors.white,
              child: Icon(Icons.camera_alt_rounded, size: 20.0),
              heroTag: 'btn_2',
            ),
          ],
        );
      case 3:
        return const FloatingActionButton(
          onPressed: null,
          foregroundColor: Colors.white,
          child: Icon(Icons.add_call, size: 20.0),
        );
    }
    return null;
  }
}
