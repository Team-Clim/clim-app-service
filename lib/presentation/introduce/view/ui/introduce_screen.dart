import 'package:carousel_slider/carousel_slider.dart';
import 'package:clim_app_service/component/clim_layout.dart';
import 'package:clim_app_service/core/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/clim/clim_color.dart';

class IntroduceScreen extends StatefulWidget {
  const IntroduceScreen({super.key});

  @override
  State<IntroduceScreen> createState() => _IntroduceScreenState();
}

class _IntroduceScreenState extends State<IntroduceScreen> {
  int activeIndex = 0;

  final List<String> images = [
    Images.page1,
    Images.page2,
    Images.page3,
  ];

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w600,
      color: ClimColors.climBlack100,
    );

    return ClimLayout(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 0.06.sw,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 0.08.sh),
            Text(
              '기숙사 청소를 쉽게',
              style: textStyle,
            ),
            Row(
              children: [
                Image.asset(
                  Images.climLogo2,
                  width: 60.w,
                  height: 50.h,
                ),
                Text(
                  '에 오신 것을',
                  style: textStyle,
                ),
              ],
            ),
            Text(
              '환영합니다!',
              style: textStyle,
            ),
            Text(
              '회원가입 하고 바로 시작해 보세요!',
              style: textStyle.copyWith(
                fontSize: 12.sp,
                color: ClimColors.climGray300,
              ),
            ),
            SizedBox(height: 66.h),
            CarouselSlider.builder(
              options: CarouselOptions(
                initialPage: 0,
                viewportFraction: 1,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) => setState(() {
                  activeIndex = index;
                }),
              ),
              itemCount: images.length,
              itemBuilder: (context, index, realIndex) {
                final path = images[index];
                return imageSlider(path, index);
              },
            ),
            SizedBox(height: 32.96.h),
            Align(
              alignment: Alignment.bottomCenter,
              child: indicator(),
            ),

            SizedBox(height: 90.7.h),
          ],
        ),
      ),
    );
  }

  Widget imageSlider(path, index) => Container(
        width: 339.8.w,
        height: 282.65.h,
        child: Image.asset(
          path,
          fit: BoxFit.fill,
        ),
      );

  Widget indicator() => Container(
        alignment: Alignment.bottomCenter,
        child: AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: images.length,
          effect: JumpingDotEffect(
            dotHeight: 12.h,
            dotWidth: 12.w,
            activeDotColor: ClimColors.climMint100,
            dotColor: ClimColors.climGray100,
          ),
        ),
      );
}
