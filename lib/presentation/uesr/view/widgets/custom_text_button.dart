import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/clim/clim_color.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color = ClimColors.climGray500,
    this.fontSize = 14,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize?.sp,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
