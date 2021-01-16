import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pramagang/pages/homepages/views/home.dart';
import 'package:pramagang/tampilan/Drawer.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var pages = [Home()];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Color(0xFF0066FF),
        color: Color(0xFF0066FF),
        items: [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
          Icon(
            Icons.list,
            size: 30,
          ),
          Icon(
            Icons.person,
            size: 30,
          ),
        ],
      ),
drawer: DrawerBar(),
    );
  }
}