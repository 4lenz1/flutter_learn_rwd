import 'package:flutter/material.dart';

import 'constants.dart';

class TabletScaffold extends StatefulWidget {
  TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: appBar,
      backgroundColor: defaultBackground,
      drawer: appDrawer
    );
  }
}
