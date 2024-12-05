import 'package:clim/component/clim_image.dart';
import 'package:clim/screen/login_page/clim_login_page.dart';
import 'package:clim/widgets/clim_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClimSuccessSignupScreen extends StatefulWidget {
  const ClimSuccessSignupScreen({super.key});

  @override
  State<ClimSuccessSignupScreen> createState() =>
      _ClimSuccessSignupScreenState();
}

class _ClimSuccessSignupScreenState extends State<ClimSuccessSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClimImage.partyImage,
            SizedBox(
              height: 21.h,
            ),
            Text(
              '회원가입 완료',
              style: TextStyle(
                  fontSize: 36.sp,
                  color: const Color(0xff000000),
                  fontFamily: 'PretendardSemiBold'),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              'clim 회원이 되주셔서 감사합니다.',
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'PretendardMedium',
                color: const Color(0xff7A7C80),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.h),
        child: climElevatedButton(
          textTittle: '로그인',
          onPressed: () {
            Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                    builder: (context) => const ClimLoginPage()));
          },
          textColor: const Color(0xffFFFFFF),
          backColor: const Color(0xff48E892),
        ),
      ),
    );
  }
}
