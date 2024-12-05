import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget indicator({required int activeIndex, required int len}) => Container(
  alignment: Alignment.center,
  child: AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: len,
    effect: JumpingDotEffect(
      dotHeight: 12.h,
      dotWidth: 12.w,
      dotColor: const Color(0xffD9D9D9),
      activeDotColor: const Color(0xff48E892),
    ),
  ),
);