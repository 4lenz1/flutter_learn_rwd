import 'package:flutter/material.dart';
import 'package:flutter_learn_rwd/constants.dart';

class MobileScaffold extends StatefulWidget {
  MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: defaultBackground,
      drawer: appDrawer
    );
  }
}
