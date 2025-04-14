import 'package:clim_app_service/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClimApp());
}

class ClimApp extends StatelessWidget {
  const ClimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      home: const SplashScreen(),
    );
  }
}
