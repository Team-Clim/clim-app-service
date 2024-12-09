import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/clim_image.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F3F5),
      body: Column(
        children: [
          Container(
            color: const Color(0xFFFFFFff),
            height: 60.h,
          ),
          Container(
            color: const Color(0xFFFFFFff),
            width: 500.w,
            height: 210.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '설정',
                    style: TextStyle(
                        fontSize: 32.sp, fontFamily: 'PretendardSemiBold'),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    '내 계정',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff838383),
                        fontFamily: 'PretendardMedeium'),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '내 정보 확인하기',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: const Color(0xff000000),
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: ClimImage.rightImage)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '비밀번호 변경하기',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: const Color(0xff000000),
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: ClimImage.rightImage)
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            color: const Color(0xFFFFFFff),
            width: 500.w,
            height: 529.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    '로그인',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff838383),
                        fontFamily: 'PretendardMedium'),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '자동 로그인',
                        style: TextStyle(
                            color: const Color(0xff000000),
                            fontSize: 20.sp,
                            fontFamily: 'PretendardMedium'),
                      ),
                      CupertinoSwitch(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value ?? false;
                          });
                        },
                        activeColor: const Color(0xff48E892),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                      minimumSize: WidgetStateProperty.all<Size>(Size(0.w, 0.h)),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      '로그아웃',
                      style: TextStyle(
                          color: const Color(0xffFF5555),
                          fontFamily: 'PretendardSemiBold',
                          fontSize: 20.sp),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
