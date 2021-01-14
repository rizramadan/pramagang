import 'package:flutter/material.dart';
import 'package:pramagang/tampilan/Navigator.dart';
import 'package:pramagang/tampilan/warna.dart';
import 'package:pramagang/tampilan/Drawer.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    home: new HomeAppBar(),
  ));
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("PRAMAGANG"),
        backgroundColor: ColorPalette.primaryDarkColor,
      ),
      drawer: DrawerBar(),
    );
  }

  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
