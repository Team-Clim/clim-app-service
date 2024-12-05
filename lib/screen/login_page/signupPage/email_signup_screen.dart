import 'package:clim/screen/login_page/signupPage/check_number_signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/clim_image.dart';
import '../../../widgets/clim_elevated_button.dart';

class EmailSignupScreen extends StatefulWidget {
  const EmailSignupScreen({super.key});

  @override
  State<EmailSignupScreen> createState() => _EmailSignupScreenState();
}

class _EmailSignupScreenState extends State<EmailSignupScreen> {
  late TextEditingController _emailTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailTextEditingController.dispose();
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
                "이메일",
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
                "이메일을 입력해 주세요.",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: const Color(0xff616366),
                  fontFamily: 'PretendardNMedium',
                ),
              ),
            ),
            SizedBox(
              height: 230.h,
            ),
            Center(
              child: SizedBox(
                width: 380.w,
                height: 60.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "이메일을 입역해 주세요,",
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
                  controller: _emailTextEditingController,
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
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const CheckNumberSignupScreen()));
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
