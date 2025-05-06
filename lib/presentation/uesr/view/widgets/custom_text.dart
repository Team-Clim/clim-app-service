import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/clim/clim_color.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const CustomText({super.key, required this.text, this.color = ClimColors.climBlack100, this.fontSize = 36, this.fontWeight = FontWeight.w600});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize?.sp,
          fontWeight: fontWeight,
      ),
    );
  }
}
