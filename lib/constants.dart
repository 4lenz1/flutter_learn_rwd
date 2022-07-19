import 'package:flutter/material.dart';

var defaultBackground = Colors.grey[300];
var appBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var appDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(children: const [
    DrawerHeader(
      child: Icon(Icons.favorite),
    ),
    ListTile(
      leading: Icon(Icons.home),
      title: Text('Home'),
    ),
    ListTile(
      leading: Icon(Icons.message),
      title: Text('message'),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text('settings'),
    ),
    ListTile(
      leading: Icon(Icons.logout),
      title: Text('Logout'),
    )
  ]),
);
