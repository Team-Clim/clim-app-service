import 'package:clim_app_service/component/clim_layout.dart';
import 'package:clim_app_service/core/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/clim/clim_color.dart';

class IntroduceScreen extends StatelessWidget {
  const IntroduceScreen({super.key});

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
            SizedBox(
              height: 0.04.sh
            ),
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
          ],
        ),
      ),
    );
  }
}
