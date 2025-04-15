import 'package:flutter/material.dart';

class ClimLayout extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? child;
  final Widget? bottomSheet;
  final Widget? bottomNavigationBar;

  const ClimLayout({
    super.key,
    this.appBar,
    this.child,
    this.bottomSheet,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: child,
      bottomSheet: bottomSheet,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
