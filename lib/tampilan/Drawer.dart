import 'package:flutter/material.dart';
import 'package:pramagang/screens/editdatadiri.dart';
import 'package:pramagang/screens/datadiri.dart';
import 'package:pramagang/screens/login_page.dart';
import 'package:pramagang/screens/nilaimagang.dart';
import 'package:pramagang/tampilan/warna.dart';
import 'package:pramagang/pages/homepages/views/home.dart';
import 'package:pramagang/pages/homepages/views/favorite.dart';
import 'package:pramagang/pages/homepages/views/list.dart';
import 'package:pramagang/pages/homepages/views/search.dart';
import 'package:pramagang/screens/ProfilePage.dart';
import 'package:pramagang/screens/setting.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pramagang/service/user_model.dart';
import 'package:pramagang/service/auth.dart';
import 'package:provider/provider.dart';

import 'auth_screen_view.dart';

class DrawerBar extends StatefulWidget {
  @override
  _DrawerBarState createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  var pages = [Home(), FavoritePage(), ListPage()];
  var _selectedNavbar = 0;
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  final userRef = FirebaseFirestore.instance.collection("users");
  UserModel _currentUser;

  String _uid;
  String _username;
  String _email;
  String _image;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  getCurrentUser() async {
    UserModel currentUser = await context
        .read<AuthenticationService>()
        .getUserFromDB(uid: auth.currentUser.uid);

    _currentUser = currentUser;

    print("${_currentUser.username}");

    setState(() {
      _image = _currentUser.image;
      _uid = _currentUser.uid;
      _username = _currentUser.username;
      _email = _currentUser.email;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentUser == null
          ? Center(child: CircularProgressIndicator())
          : pages[_selectedNavbar],
      appBar: AppBar(
        title: Text('PRAMAGANG'),
        backgroundColor: ColorPalette.primaryDarkColor,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: ColorPalette.primaryDarkColor,
              child: Center(
                  child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(_image != null
                              ? _image
                              : 'https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_1280.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    'PRAMAGANG',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Hi ${_username}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
            ),
            ListTile(
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataDiriPage()),
                );
              },
              title: Text(
                'Data Diri',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.announcement),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NilaiMagangPage()),
                );
              },
              title: Text(
                'Nilai Magang',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsOnePage()),
                );
              },
              leading: Icon(Icons.settings),
              title: Text(
                'Setting',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              onTap: () async {
                await context.read<AuthenticationService>().signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => AuthScreenView()),
                    (context) => false);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Notification'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
    Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        color: Colors.grey.shade100,
        child: ListView(
          padding: EdgeInsets.only(top: 55),
          children: [
            Text(
              "Activity",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Kategori",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
