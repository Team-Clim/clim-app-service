import 'package:clim_app_service/presentation/introduce/view/ui/introduce_screen.dart';
import 'package:clim_app_service/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'core/clim/clim_color.dart';

void main() {
  runApp(const ClimApp());
}

class ClimApp extends StatefulWidget {
  const ClimApp({super.key});

  @override
  State<ClimApp> createState() => _ClimAppState();
}

class _ClimAppState extends State<ClimApp> {
  late GoRouter router;

  @override
  void initState() {
    super.initState();
    router = GoRouter(
      initialLocation: '/splash',
      routes: [
        GoRoute(path: '/splash', name: 'splash_screen', builder: (_, __) => const SplashScreen()),
        GoRoute(path: '/introduce', name: 'introduce_screen', builder: (_, __) => const IntroduceScreen()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: ClimColors.climWhite100,
      ),
      // home: const SplashScreen(),
    );
  }
}
