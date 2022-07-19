import 'package:flutter/material.dart';
import 'package:flutter_learn_rwd/constants.dart';



class DesktopScaffold extends StatefulWidget {
  DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      backgroundColor: defaultBackground,
      appBar: appBar,
      body: 
      Row(children: [
        appDrawer
      ],)
      // open draw 
    );
  }
}