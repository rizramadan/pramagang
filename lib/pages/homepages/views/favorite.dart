import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pramagang/pages/homepages/models/item.dart';
import 'package:pramagang/pages/homepages/views/show/itemlist.dart';
import 'package:pramagang/service/firestore_service.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  User user;
  @override
  Widget build(BuildContext context) {
    user = Provider.of<User>(context);
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Favorite",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: Fireservice.getFavorite(user.uid),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              var items = snapshot.data.docs
                  .map((query) => Item(
                        id: query.data()["id"],
                        name: query.data()["name"],
                        category: query.data()["category"],
                        directors: query.data()["directors"],
                        releaseDate: query.data()["releaseDate"],
                        releaseDateDesc: query.data()["releaseDateDesc"],
                        runtime: query.data()["runtime"],
                        desc: query.data()["desc"],
                        kriteria: query.data()["kriteria"],
                        waktu: query.data()["waktu"],
                        divisi: query.data()["divisi"],
                        rating: query.data()["rating"],
                        imageUrl: query.data()["imageUrl"],
                        bannerUrl: query.data()["bannerUrl"],
                        trailerImg1: query.data()["trailerImg1"],
                        trailerImg2: query.data()["trailerImg2"],
                        trailerImg3: query.data()["trailerImg3"],
                      ))
                  .toList();
              return Container(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(4.0),
                  childAspectRatio: 8.0 / 9.0,
                  children: items
                      .map(
                        (Item) => ItemList(item: Item),
                      )
                      .toList(),
                ),
              );
            },
          ),
        ],
      ),
    )
    );
  }
}
