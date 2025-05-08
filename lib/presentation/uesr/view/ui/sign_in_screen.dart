import 'package:clim_app_service/core/images.dart';
import 'package:clim_app_service/main.dart';
import 'package:clim_app_service/presentation/uesr/view/widgets/custom_button.dart';
import 'package:clim_app_service/presentation/uesr/view/widgets/custom_text_button.dart';
import 'package:clim_app_service/presentation/uesr/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/clim/clim_color.dart';
import '../widgets/custom_text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailTextFocus = FocusNode();
  final passwordTextFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (emailTextFocus.hasFocus) {
          emailTextFocus.unfocus();
        } else {
          passwordTextFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 21.5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.05.h),
              const CustomText(text: '로그인'),
              SizedBox(height: 6.h),
              const CustomText(
                text: '로그인하고 Clim을 사용해 보세요.',
                color: ClimColors.climGray600,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 94.h),
              CustomTextField(labelText: '이메일', focusNode: emailTextFocus),
              SizedBox(height: 50.h),
              CustomTextField(labelText: '비밀번호', focusNode: passwordTextFocus),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextButton(
                      text: '아이디 찾기',
                      onPressed: () => debugPrint('아이디를 찾습니다. 하하하하')),
                  Image.asset(
                    Images.circleImage,
                    width: 7.w,
                    height: 7.h,
                  ),
                  CustomTextButton(
                      text: '비밀번호 찾기',
                      onPressed: () => debugPrint('비밀번호를 찾습니다. 하하하하')),
                ],
              ),
              SizedBox(height: 294.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    text: '아직 회원이 아니신가요?',
                    fontSize: 14,
                    color: ClimColors.climGray500,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextButton(
                    text: '회원가입',
                    color: ClimColors.climMint100,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    onPressed: () {
                      context.push('/signup');
                    },
                  ),
                ],
              ),
              const Center(child: CustomButton(text: '로그인'))
            ],
          ),
        ),
      ),
    );
  }
}
