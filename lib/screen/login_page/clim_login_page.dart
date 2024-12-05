import 'package:clim/screen/login_page/signupPage/name_signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'clim_login_splash_screen.dart';

class ClimLoginPage extends StatefulWidget {
  const ClimLoginPage({super.key});

  @override
  State<ClimLoginPage> createState() => _ClimLoginPageState();
}

class _ClimLoginPageState extends State<ClimLoginPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Column(
            children: [
              SizedBox(
                height: 70.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    '로그인',
                    style: TextStyle(
                        fontSize: 36.sp, fontFamily: 'PretendardSemiBold'),
                  ),
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    '로그인하고 Clim을 사용해 보세요.',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff616366),
                        fontFamily: 'PretendardMedium'),
                  )
                ],
              ),
              SizedBox(
                height: 113.h,
              ),
              SizedBox(
                width: 380.w,
                height: 36.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "이메일",
                    labelStyle: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'PretendardMedium',
                        color: const Color(0xffCCCCCC)),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff48E892)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 73.h,
              ),
              SizedBox(
                width: 380.w,
                height: 36.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "비밀번호",
                    labelStyle: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'PretendardMedium',
                        color: const Color(0xffCCCCCC)),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff48E892)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){}, child: Text("아이디 찾기", style: TextStyle(fontSize: 13.sp, color: const Color(0xffCCCCCC), fontFamily: 'PretendardMedium'),)),
                  Image.asset('assets/images/circle.png'),
                  TextButton(onPressed: (){}, child: Text("비밀번호 변경", style: TextStyle(fontSize: 13.sp, color: const Color(0xffCCCCCC), fontFamily: 'PretendardMedium'),)),
                ],
              ),
              SizedBox(
                height: 275.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('아직 회원이 아니신가요?', style: TextStyle(fontSize: 14.sp, fontFamily: 'PretendardMedium'),),
                  TextButton(onPressed: (){
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => const NameSignupScreen( )));
                  }, child: Text("회원가입", style: TextStyle(fontSize: 16.sp, fontFamily: 'PretendardSemiBold', color: const Color(0xff48E892)),))
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(380.w, 70.h),
                  backgroundColor: const Color(0xff48E892),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                  onPressed: (){
                    Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>const ClimLoginSplashScreen()));
                  },
                  child: Text("로그인", style: TextStyle(fontSize: 24.sp, fontFamily: 'PretendardBold', color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
