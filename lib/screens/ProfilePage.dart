import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pramagang/service/firestore_service.dart';
import 'package:pramagang/service/user_model.dart';
import 'package:pramagang/service/auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User user;

  @override
  Widget build(BuildContext context) {
    user = Provider.of<User>(context);
    return Scaffold(
        body:
            profileView() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget profileView() {
    return StreamBuilder<DocumentSnapshot>(
        stream: Fireservice.getdataUser(user.uid),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 24,
                          color: Colors.black54,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    Text(
                      'Profiles details',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(height: 24, width: 24)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Stack(
                  children: <Widget>[
                    snapshot.data.data()["profile"] == null
                        ? CircleAvatar(
                            radius: 70,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/profile.png',
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : CircleAvatar(
                            radius: 70,
                            child: ClipOval(
                              child: Image.network(
                                snapshot.data.data()["profile"],
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    Positioned(
                        bottom: 1,
                        right: 1,
                        child: GestureDetector(
                          onTap: () async {
                            var image = await ImagePicker().getImage(
                              source: ImageSource.gallery,
                            );
                            if (image != null) {
                              File file = File(image.path);

                              String filename = basename(file.path);

                              var res = await FirebaseStorage.instance
                                  .ref()
                                  .child(filename)
                                  .putFile(file)
                                  .whenComplete(() {})
                                  .then(
                                (task) async {
                                  return await task.ref.getDownloadURL();
                                },
                              );

                              await Fireservice.updateProfile(
                                snapshot.data.data()["uid"],
                                res,
                              );
                            }
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Icon(
                              Icons.add_a_photo,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        )),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.black54,
                          Color.fromRGBO(0, 41, 102, 1)
                        ])),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                      child: Container(
                        height: 60,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${snapshot.data.data()["nama_lengkap"] ?? "Nama lengkap belum di tambahkan"}',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(width: 1.0, color: Colors.white70)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                      child: Container(
                        height: 60,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${snapshot.data.data()["npm"] ?? "npm belum di tambahkan"}',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(width: 1.0, color: Colors.white70)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                      child: Container(
                        height: 60,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${snapshot.data.data()["email"]}',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(width: 1.0, color: Colors.white70)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                      child: Container(
                        height: 60,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${snapshot.data.data()["no_telephone"] ?? "Nomot telepoone belum di tambahkan"}',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(width: 1.0, color: Colors.white70)),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          );
        });
  }
}
