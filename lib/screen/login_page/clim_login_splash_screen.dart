import 'dart:async';

import 'package:clim/component/clim_image.dart';
import 'package:clim/screen/main_page/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClimLoginSplashScreen extends StatefulWidget {
  const ClimLoginSplashScreen({super.key});

  @override
  State<ClimLoginSplashScreen> createState() => _ClimLoginSplashScreenState();
}

class _ClimLoginSplashScreenState extends State<ClimLoginSplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      showModalBottomSheet(
        isDismissible: false,
          backgroundColor: const Color(0xffFFFFFF),
          barrierColor: const Color(0xff111111).withOpacity(0.6),
          context: context,
          builder: (context) {
            return SizedBox(
              height: 477.h,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClimImage.lockedImage,
                    SizedBox(
                      height: 16.h,
                    ),
                    Text("다음부턴", style: TextStyle(fontSize: 24.sp, color: const Color(0xff000000), fontFamily: 'PretendardSemiBold'),),
                    Text("자동 로그인 할까요?", style: TextStyle(fontSize: 24.sp, color: const Color(0xff000000), fontFamily: 'PretendardSemiBold'),),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text("항상 '설정'에서 수정할 수 있어요!", style: TextStyle(fontSize: 17.sp, color: const Color(0xffAAAAAA), fontFamily: 'PretendardMedium'),),
                    SizedBox(
                      height: 38.h,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(380.w, 59.h),
                        backgroundColor: const Color(0xff48E892),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                        onPressed: (){
                          Navigator.of(context).pop();
                          Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>const MainScreen()));
                        },
                        child: Text('네 좋아요', style: TextStyle(fontSize: 20.sp, color: const Color(0xffFFFFFF), fontFamily: 'PretendardBold'),),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(380.w, 59.h),
                        backgroundColor: const Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>const MainScreen()));
                      },
                      child: Text('다음에 할게요', style: TextStyle(fontSize: 20.sp, color: const Color(0xff48E892), fontFamily: 'PretendardBold'),),
                    ),
                  ],
                ),
              ),
            );
          });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "로그인 성공!",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: const Color(0xffAAAAAA),
                  fontFamily: 'PretendardMedium'),
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              "이건희님,",
              style: TextStyle(
                  fontSize: 32.sp,
                  color: const Color(0xff000000),
                  fontFamily: 'PretendardSemiBold'),
            ),
            Text(
              "환영합니다!",
              style: TextStyle(
                  fontSize: 32.sp,
                  color: const Color(0xff000000),
                  fontFamily: 'PretendardSemiBold'),
            ),
            SizedBox(
              height: 39.h,
            ),
            ClimImage.clapImage
          ],
        ),
      ),
    );
  }
}
