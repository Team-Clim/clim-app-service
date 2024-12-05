import 'package:clim/component/clim_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBar extends StatelessWidget {
  final TabController tabController;

  const BottomBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 120.h,
        child: TabBar(
          controller: tabController,
          labelColor: const Color(0xff48E892),
          unselectedLabelColor: const Color(0xffE1E1E1),
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: ClimImage.homeImage,
            ),
            Tab(
              icon: ClimImage.speakerImage,
            ),
            Tab(
              icon: ClimImage.subtractImage,
            ),
          ],
        ),
      ),
    );
  }
}
