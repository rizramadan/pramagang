
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pramagang/service/user_model.dart';
import 'package:pramagang/service/auth.dart';
import 'package:provider/provider.dart';
import 'package:pramagang/splashscreen.dart';

class SettingsOnePage extends StatefulWidget {
  static final String path = "lib/screens/setting.dart";

  @override
  _SettingsOnePageState createState() => _SettingsOnePageState();
}

class _SettingsOnePageState extends State<SettingsOnePage> {
  bool _dark;
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
    _dark = false;
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


  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        backgroundColor: _dark ? null : Colors.grey.shade200,
        appBar: AppBar(
          elevation: 0,
          brightness: _getBrightness(),
          iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
          backgroundColor: Colors.transparent,
          title: Text(
            'Settings',
            style: TextStyle(color: _dark ? Colors.white : Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.moon),
              onPressed: () {
                setState(() {
                  _dark = !_dark;
                });
              },
            )
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.purple,
                    child: ListTile(
                      onTap: () {
                        //open edit profile
                      },
                      title: Text(
                        "By ${_username}",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('assets/images/profile.png'),
                      ),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.lock_outline,
                            color: Colors.purple,
                          ),
                          title: Text("Change Password"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change password
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            FontAwesomeIcons.language,
                            color: Colors.purple,
                          ),
                          title: Text("Change Language"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change language
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.purple,
                          ),
                          title: Text("Change Location"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    "Notification Settings",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Received notification"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: false,
                    title: Text("Received newsletter"),
                    onChanged: null,
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Received Offer Notification"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Received App Updates"),
                    onChanged: null,
                  ),
                  const SizedBox(height: 60.0),
                ],
              ),
            ),
            Positioned(
              bottom: -20,
              left: -20,
              child: Container(
                width: 80,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: 00,
              left: 00,
              child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.powerOff,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreenPage()),
                );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}