import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String email;
  String uid;
  String username;
  String image;
  DateTime timestamp;

  UserModel({this.email, this.uid, this.username, this.timestamp, this.image});

  Map toMap(UserModel user) {
    var data = Map<String, dynamic>();
    data["profile"] = user.image;
    data["uid"] = user.uid;
    data["username"] = user.username;
    data["email"] = user.email;
    data["timestamp"] = user.timestamp;

    return data;
  }

  UserModel.fromMap(Map<String, dynamic> mapData) {
    this.image = mapData["profile"];
    this.uid = mapData["uid"];
    this.username = mapData["username"];
    this.email = mapData["email"];
  }
}
