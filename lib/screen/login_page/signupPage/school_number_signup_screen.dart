import 'package:clim/screen/login_page/clim_success_signup_screen..dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/clim_image.dart';
import '../../../widgets/clim_elevated_button.dart';

class SchoolNumberSignupScreen extends StatefulWidget {
  const SchoolNumberSignupScreen({super.key});

  @override
  State<SchoolNumberSignupScreen> createState() => _SchoolNumberSignupScreenState();
}

class _SchoolNumberSignupScreenState extends State<SchoolNumberSignupScreen> {
  late TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
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
                "학번",
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
                "학년/반/번호를 입력해 주세요.",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: const Color(0xff616366),
                  fontFamily: 'PretendardNMedium',
                ),
              ),
            ),
            SizedBox(
              height: 240.h,
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
                  controller: _passwordController,
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
                  Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => const ClimSuccessSignupScreen()), (route)=>false);
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
