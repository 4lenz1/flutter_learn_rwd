import 'package:flutter/material.dart';
import 'package:flutter_learn_rwd/desktop_scaffold.dart';
import 'package:flutter_learn_rwd/mobile_scaffold.dart';
import 'package:flutter_learn_rwd/responsive_layout.dart';
import 'package:flutter_learn_rwd/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
