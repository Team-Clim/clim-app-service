import 'package:clim/screen/start_page/clim_splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffFFFFFF),
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.white
          )
        ),
        home: const ClimSplashPage(),
      ),
    );
  }
}
