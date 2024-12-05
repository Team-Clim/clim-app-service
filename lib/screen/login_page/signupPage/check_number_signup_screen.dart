import 'package:clim/screen/login_page/signupPage/password_signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/clim_image.dart';
import '../../../widgets/clim_elevated_button.dart';

class CheckNumberSignupScreen extends StatefulWidget {
  const CheckNumberSignupScreen({super.key});

  @override
  State<CheckNumberSignupScreen> createState() => _CheckNumberSignupScreenState();
}

class _CheckNumberSignupScreenState extends State<CheckNumberSignupScreen> {
  late TextEditingController _checkNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _checkNumberController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _checkNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: ClimImage.backImage,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Text(
                "인증번호",
                style: TextStyle(
                  fontSize: 36.sp,
                  color: const Color(0xff000000),
                  fontFamily: 'PretendardBold',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Text(
                "보내드린 인증번호 6자리를 입력해주세요.\n입력하신 이메일로 보내드렸어요!",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: const Color(0xff616366),
                  fontFamily: 'PretendardNMedium',
                ),
              ),
            ),
            SizedBox(
              height: 67.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              child: Row(
                children: [
                  Row(
                    children: [
                      ClimImage.clockImage,
                      SizedBox(width: 11.w,),
                      Text("3:25", style: TextStyle(fontSize: 18.sp, color: const Color(0xffB4B9C3), fontFamily: 'PretendardMedium'),)
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                width: 380.w,
                height: 60.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "",
                    labelStyle: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'PretendardMedium',
                      color: const Color(0xffCCCCCC),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff48E892),
                      ),
                    ),
                  ),
                  controller: _checkNumberController,
                ),
              ),
            ),
            // SizedBox(
            //   height: 2.h,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20.w),
            //   child: Row(
            //     children: [
            //       ClimImage.vectorImage,
            //       SizedBox(
            //         width: 3.w,
            //       ),
            //       TextButton(onPressed: (){}, child: Text("인증메일 재발송", style: TextStyle(fontSize: 16.sp, color: const Color(0xff48E892), fontFamily: 'PretendardMedium'),)),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 424.h,
            ),
            Center(
              child: climElevatedButton(
                textTittle: '다음',
                onPressed: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const PasswordSignupScreen()));
                },
                textColor: const Color(0xffFFFFFF),
                backColor: const Color(0xff48E892),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
