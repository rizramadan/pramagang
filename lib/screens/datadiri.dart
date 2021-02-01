import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pramagang/screens/editdatadiri.dart';
import 'package:pramagang/service/firestore_service.dart';
import 'package:pramagang/warna.dart';
import 'package:provider/provider.dart';

class DataDiriPage extends StatefulWidget {
  @override
  _DataDiriPageState createState() => _DataDiriPageState();
}

class _DataDiriPageState extends State<DataDiriPage> {
  User user;
  @override
  Widget build(BuildContext context) {
    user = Provider.of<User>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Diri"),
        backgroundColor: ColorPalette.primaryDarkColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditDataDiriPage()),
              );
            },
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: MediaQuery.of(context).size.height - 78,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ListView(
          children: [
            buildClassItem2(),
          ],
        ),
      ),
    );
  }

  buildClassItem2() {
    return StreamBuilder<DocumentSnapshot>(
        stream: Fireservice.getdataUser(user.uid),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.data.exists) {
            return Text("Belum ada data diri");
          }
          return Container(
            margin: EdgeInsets.only(bottom: 5),
            padding: EdgeInsets.all(20),
            height: 380,
            decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      "Nama Lengkap : ${snapshot.data.data()["nama_lengkap"] ?? ""}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(""),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Npm : ${snapshot.data.data()["npm"] ??""}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(""),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Semester : ${snapshot.data.data()["semester"] ??""}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(""),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Jurusan : ${snapshot.data.data()["jurusan"] ??""}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(""),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Email : ${snapshot.data.data()["email"]??""}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(""),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "No Telephone : ${snapshot.data.data()["no_telephone"]??""}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(""),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
