import 'package:flutter/material.dart';
import 'package:flutter_learn_rwd/constants.dart';
import 'package:flutter_learn_rwd/util/my_box.dart';
import 'package:flutter_learn_rwd/util/my_tile.dart';

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
        body: Row(
          children: [
            // drawer
            appDrawer,

            // middle
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  // 4 box
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
            ),
            //  3rd column
            Expanded(
                child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.pink,
                ))
              ],
            ))
          ],
        )
        // open draw
        );
  }
}
