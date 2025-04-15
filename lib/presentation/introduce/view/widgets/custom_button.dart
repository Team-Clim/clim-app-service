import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final Function? onPressed;
  final String? text;
  final Color? color;
  final Color? textColor;

  const CustomButton({
    super.key,
    this.onPressed,
    this.text,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 133.w),
      ),
      onPressed: () {},
      child: Text(
        text!,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: textColor,
          fontSize: 20.sp,
        ),
      ),
    );
  }
}
