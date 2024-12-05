import 'dart:async';

import 'package:clim/component/clim_image.dart';
import 'package:clim/screen/start_page/clim_start_page.dart';
import 'package:flutter/material.dart';

class ClimSplashPage extends StatefulWidget {
  const ClimSplashPage({super.key});

  @override
  State<ClimSplashPage> createState() => _ClimSplashPageState();
}

class _ClimSplashPageState extends State<ClimSplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1000), (){
      Navigator.of(context).pushReplacement(_createRoute());
    });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const ClimStartPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {

        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var opacityAnimation = animation.drive(tween);

        return FadeTransition(opacity: opacityAnimation, child: child,);
      },
      transitionDuration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClimImage.climLogo,
      ),
    );
  }
}
