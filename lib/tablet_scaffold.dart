import 'package:flutter/material.dart';
import 'package:flutter_learn_rwd/util/my_box.dart';
import 'package:flutter_learn_rwd/util/my_tile.dart';

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
      drawer: appDrawer,
      body: Column(
        children: [
          // 4 box
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),

          // Tile
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return const MyTile();
                  }))),
        ],
      ),
   
    );
  }
}
