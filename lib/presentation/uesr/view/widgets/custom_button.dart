import 'package:clim_app_service/core/clim/clim_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final double? border;

  const CustomButton({
    super.key,
    required this.text,
    this.color = ClimColors.climWhite100,
    this.fontSize = 24,
    this.fontWeight = FontWeight.w700,
    this.width = 367,
    this.height = 65,
    this.border = 15,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(width!.w, height!.h),
          backgroundColor: ClimColors.climMint100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(border!.r),
          )),
      onPressed: () {},
      child: Text(
        '로그인',
        style: TextStyle(
          color: color,
          fontSize: fontSize?.sp,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
