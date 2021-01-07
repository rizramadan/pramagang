import 'package:flutter/material.dart';
import 'package:pramagang/warna.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_1280.png'),
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
                    '',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'Data Diri',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.announcement_outlined),
              title: Text(
                'Nilai Magang',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Setting',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              onTap: () {},
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
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
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
