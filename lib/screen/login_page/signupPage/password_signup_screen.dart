import 'package:clim/screen/login_page/signupPage/school_number_signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/clim_image.dart';
import '../../../widgets/clim_elevated_button.dart';

class PasswordSignupScreen extends StatefulWidget {
  const PasswordSignupScreen({super.key});

  @override
  State<PasswordSignupScreen> createState() => _PasswordSignupScreenState();
}

class _PasswordSignupScreenState extends State<PasswordSignupScreen> {
  late TextEditingController _passwordController = TextEditingController();
  late TextEditingController _checkPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _checkPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _checkPasswordController.dispose();
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
                "비밀번호",
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
                "비밀번호를 입력해 주세요.",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: const Color(0xff616366),
                  fontFamily: 'PretendardNMedium',
                ),
              ),
            ),
            SizedBox(
              height: 89.h,
            ),
            Center(
              child: SizedBox(
                width: 380.w,
                height: 60.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "비밀번호를 입력해 주세요.",
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
                  controller: _passwordController,
                ),
              ),
            ),
            SizedBox(
              height: 66.h,
            ),
            Center(
              child: SizedBox(
                width: 380.w,
                height: 60.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "비밀번호 확인",
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
                  controller: _checkPasswordController,
                ),
              ),
            ),
            SizedBox(
              height: 330.h,
            ),
            Center(
              child: climElevatedButton(
                textTittle: '다음',
                onPressed: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=> const SchoolNumberSignupScreen()));
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
