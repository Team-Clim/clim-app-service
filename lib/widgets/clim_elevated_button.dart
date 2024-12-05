import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget climElevatedButton({required String textTittle, required Color textColor, required Color backColor, VoidCallback? onPressed}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      minimumSize: Size(380.w, 56.h),
      backgroundColor: backColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
    ),
    onPressed: onPressed,
    child: Text(
     textTittle,
      style: TextStyle(
          fontSize: 20.sp,
          color: textColor,
          fontFamily: 'PretendardBold'),
    ),
  );
}