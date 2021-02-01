import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:pramagang/pages/homepages/models/item.dart';

class Fireservice {
  static var _userCollection = FirebaseFirestore.instance.collection('users');
  static Future<void> updateProfile(String id, String profile) async {
    await _userCollection.doc(id).set({
      "profile": profile,
    }, SetOptions(merge: true));
  }

  static Future<void> dataUser({
    String id,
    String nama_lengkap,
    String npm,
    String semester,
    String jurusan,
    String email,
    String no_telephone,
  }) async {
    await _userCollection.doc(id).set(
        {
          "id": id,
          "nama_lengkap": nama_lengkap,
          "npm": npm,
          "semester": semester,
          "jurusan": jurusan ?? "",
          "no_telephone": no_telephone ?? "",
        },
        SetOptions(
          merge: true,
        ));
  }

  static Stream<DocumentSnapshot> getdataUser(String id) {
    return _userCollection.doc(id).snapshots();
  }

  static Stream<QuerySnapshot> getFavorite(String id) {
    return _userCollection.doc(id).collection("favorite").snapshots();
  }

  static Future<void> addFavotire(String id, Item item) async {
    _userCollection.doc(id).collection("favorite").doc(item.id.toString()).set({
      "id": item.id,
      "name": item.name,
      "category": item.category,
      "desc": item.desc,
      "rating": item.rating,
      "directors": item.directors,
      "releaseDate": item.releaseDate,
      "releaseDateDesc": item.releaseDateDesc,
      "runtime": item.runtime,
      "bannerUrl": item.bannerUrl,
      "imageUrl": item.imageUrl,
      "trailerImg1": item.trailerImg1,
      "trailerImg2": item.trailerImg2,
      "trailerImg3": item.trailerImg3,
    });
  }
}
