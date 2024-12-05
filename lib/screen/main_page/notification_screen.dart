import 'package:clim/component/clim_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F3F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: const Color(0xffFFFFFF),
                  height: 195.h,
                ),
                Positioned(
                  left: 25.w,
                  top: 100.h,
                  child: Text(
                    '공지사항',
                    style: TextStyle(
                        fontSize: 36.sp,
                        color: const Color(0xff000000),
                        fontFamily: 'PretendardSemiBold'),
                  ),
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                color: const Color(0xffFFFFFF),
                width: 550.w,
                height: 105.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'new',
                        style: TextStyle(
                            fontSize: 24.sp,
                            color: const Color(0xffFF5555),
                            fontFamily: 'PretendardBold'),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        '우정관 6월 캠패인',
                        style: TextStyle(
                            fontSize: 24.sp,
                            color: const Color(0xff000000),
                            fontFamily: 'PretendardMedium'),
                      ),
                      Row(
                        children: [
                          Text(
                            '사감실',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff838383),
                                fontFamily: 'PretendardRegular'),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          ClimImage.dotImage,
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            '2024.06.10',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff838383),
                                fontFamily: 'PretendardRegular'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            GestureDetector(
              child: Container(
                color: const Color(0xffFFFFFF),
                width: 550.w,
                height: 105.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Clim 처음 업데이트',
                        style: TextStyle(
                            fontSize: 24.sp,
                            color: const Color(0xff000000),
                            fontFamily: 'PretendardMedium'),
                      ),
                      Row(
                        children: [
                          Text(
                            'Clim',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff838383),
                                fontFamily: 'PretendardRegular'),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          ClimImage.dotImage,
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            '2024.06.10',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff838383),
                                fontFamily: 'PretendardRegular'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            GestureDetector(
              child: Container(
                color: const Color(0xffFFFFFF),
                width: 550.w,
                height: 105.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'test',
                        style: TextStyle(
                            fontSize: 24.sp,
                            color: const Color(0xff000000),
                            fontFamily: 'PretendardMedium'),
                      ),
                      Row(
                        children: [
                          Text(
                            'Clim',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff838383),
                                fontFamily: 'PretendardRegular'),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          ClimImage.dotImage,
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            '2024.06.10',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff838383),
                                fontFamily: 'PretendardRegular'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
