import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/clim/clim_color.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final FocusNode? focusNode;

  const CustomTextField({super.key, required this.labelText, this.focusNode});

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = TextStyle(
      color: ClimColors.climGray500,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
    );

    return TextField(
      focusNode: focusNode,
      decoration: InputDecoration(
        labelText: labelText,
        isDense: true,
        labelStyle: baseTextStyle,
        contentPadding: EdgeInsets.only(bottom: 5.5.h),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ClimColors.climGray500,
            width: 2.h,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: ClimColors.climMint100,
              width: 2.h,
          ),
        ),
      ),
    );
  }
}
