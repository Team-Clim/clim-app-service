import 'package:carousel_slider/carousel_slider.dart';
import 'package:clim/component/clim_image.dart';
import 'package:clim/screen/login_page/signupPage/name_signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/clim_image_slider.dart';
import '../../widgets/clim_indicator.dart';
import '../login_page/clim_login_page.dart';

class ClimStartPage extends StatefulWidget {
  const ClimStartPage({super.key});

  @override
  State<ClimStartPage> createState() => _ClimStartPageState();
}

class _ClimStartPageState extends State<ClimStartPage> {
  int activeIndex = 0;

  final pageController = PageController();
  final communityPageController = PageController();

  List images = [
    'assets/images/introduce_page/clim_screen1.png',
    'assets/images/introduce_page/clim_screen2.png',
    'assets/images/introduce_page/clim_screen3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Row(
              children: [
                Text(
                  "기숙사 청소를 쉽게",
                  style: TextStyle(
                      fontSize: 30.sp, fontFamily: 'PretendardSemiBold'),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 60.w,
                  height: 50.h,
                  child: ClimImage.climLogo2,
                ),
                Text(
                  "에 오신 것을",
                  style: TextStyle(
                      fontSize: 30.sp, fontFamily: 'PretendardSemiBold'),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "환영합니다!",
                  style: TextStyle(
                      fontSize: 30.sp, fontFamily: 'PretendardSemiBold'),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  '회원가입 하고 바로 시작해 보세요!',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'PretendardSemiBold',
                      color: const Color(0xffAAAAAA)),
                )
              ],
            ),
            SizedBox(
              height: 47.h,
            ),
            SizedBox(
              width: 340.w,
              height: 283.h,
              child: CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realIndex) {
                  final path = images[index];
                  return climImageSlider(path, index);
                },
                options: CarouselOptions(
                  initialPage: 0,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _) => setState(() {
                    activeIndex = index;
                  }),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: indicator(activeIndex: activeIndex, len: images.length),
            ),
            SizedBox(
              height: 130.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(380.w, 56.h),
                backgroundColor: const Color(0xff48E892),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const ClimLoginPage()));
              },
              child: Text(
                '로그인 하기',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontFamily: 'PretendardBold',
                ),
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(380.w, 56.h),
                backgroundColor: const Color(0xffFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const NameSignupScreen()));
              },
              child: Text(
                '회원가입 하기',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xff48E892),
                    fontFamily: 'PretendardBold'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
