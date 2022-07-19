import 'package:flutter/material.dart';
import 'package:flutter_learn_rwd/constants.dart';
import 'package:flutter_learn_rwd/util/my_box.dart';
import 'package:flutter_learn_rwd/util/my_tile.dart';

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
      drawer: appDrawer,
      body: Column(
        children: [
          // 4 box
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
