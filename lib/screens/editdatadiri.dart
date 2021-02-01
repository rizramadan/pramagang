import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pramagang/service/firestore_service.dart';
import 'package:pramagang/tampilan/warna.dart';
import 'package:provider/provider.dart';

class EditDataDiriPage extends StatefulWidget {
  @override
  _EditDataDiriPageState createState() => _EditDataDiriPageState();
}

class _EditDataDiriPageState extends State<EditDataDiriPage> {
  final _formKey = GlobalKey<FormState>();
  String nama_lengkap;
  String npm;
  String semester;
  String jurusan;
  String no_telephone;
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
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                // TextField(),
                TextFormField(
                  onSaved: (value) => nama_lengkap = value,
                  decoration: new InputDecoration(
                    hintText: "Masukan Nama Anda",
                    labelText: "Nama Lengkap",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  onSaved: (value) => npm = value,
                  decoration: new InputDecoration(
                    hintText: "Masukan Npm Anda",
                    labelText: "Npm",
                    icon: Icon(Icons.account_box_outlined),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Npm tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  onSaved: (value) => semester = value,
                  decoration: new InputDecoration(
                    hintText: "Semester Tidak Boleh Kosong",
                    labelText: "Semester",
                    icon: Icon(Icons.book),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Semester tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  onSaved: (value) => jurusan = value,
                  decoration: new InputDecoration(
                    hintText: "Masukan Jurusan Anda",
                    labelText: "Jurusan",
                    icon: Icon(Icons.home_work),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Jurusan tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 5,
                ),

                TextFormField(
                  onSaved: (value) => no_telephone = value,
                  decoration: new InputDecoration(
                    hintText: "Masukan No Telepon Anda",
                    labelText: "No Telepon",
                    icon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'No Telepon tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: ColorPalette.primaryDarkColor,
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      await Fireservice.dataUser(
                        id: user.uid,
                        jurusan: jurusan,
                        nama_lengkap: nama_lengkap,
                        no_telephone: no_telephone,
                        npm: npm,
                        semester: semester,
                      );

                      Navigator.pop(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
