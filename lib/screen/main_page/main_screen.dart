import 'package:clim/screen/main_page/home_screen.dart';
import 'package:clim/screen/main_page/notification_screen.dart';
import 'package:clim/screen/main_page/setting_screen.dart';
import 'package:clim/screen/main_page/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>  with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
          children: const <Widget>[
            HomeScreen(),
            NotificationScreen(),
            SettingScreen(),
          ],
      ),
      bottomNavigationBar: BottomBar(tabController: _tabController,),
    );
  }
}
