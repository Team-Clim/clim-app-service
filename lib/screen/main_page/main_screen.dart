import 'package:clim/component/clim_image.dart';
import 'package:clim/screen/main_page/home_screen.dart';
import 'package:clim/screen/main_page/notification_screen.dart';
import 'package:clim/screen/main_page/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _index = 0;

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
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          HomeScreen(),
          NotificationScreen(),
          SettingScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 123.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15.r)),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: const Color(0xff48E892),
          unselectedItemColor: const Color(0xffE1E1E1),
          backgroundColor: const Color(0xffFFFFFF),
          currentIndex: _index,
          onTap: (value) {
            setState(() {
              _index = value;
              _tabController.animateTo(value);
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: _index == 0 ? ClimImage.home2Image : ClimImage.homeImage, label: "home"),
            BottomNavigationBarItem(
                icon: _index == 1 ? ClimImage.speaker2Image : ClimImage.speakerImage, label: "speaker"),
            BottomNavigationBarItem(
                icon: _index == 2 ? ClimImage.setting2Image : ClimImage.settingImage, label: "subtract"),
          ],
        ),
      ),
    );
  }
}
