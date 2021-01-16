import 'package:flutter/material.dart';
import 'package:pramagang/tampilan/Navigator.dart';
import 'package:pramagang/tampilan/warna.dart';
import 'package:pramagang/tampilan/Drawer.dart';



class HomeAppBar extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("PRAMAGANG"),
        backgroundColor: ColorPalette.primaryDarkColor,
      ),
      drawer: DrawerBar(),
      bottomNavigationBar: NavigatorBar(),
    );
  }

  
}
