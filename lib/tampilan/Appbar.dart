import 'package:flutter/material.dart';

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
      ),
    );
  }

  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
