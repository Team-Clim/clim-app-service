import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget climImageSlider(path, index) => Container(
  width: 340.w,
  height: 283.h,
  color: Colors.grey,
  child: Image.asset(path, fit: BoxFit.cover,),
);