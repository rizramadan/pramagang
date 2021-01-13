import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

class PramagangCategories {
  final String category_img;
  final String category_name;
  final int category_id;
  final List<ListPerusahaan> list_perusahaan;

  const PramagangCategories(
      {this.category_img,
      this.category_name,
      this.category_id,
      this.list_perusahaan});

  PramagangCategories.fromJson(Map<String, dynamic> jsonMap)
      : category_img = jsonMap['category_img'],
        category_name = jsonMap['category_name'],
        category_id = jsonMap['category_id'],
        list_perusahaan = (jsonMap['grocery_products'] as List)
            .map((i) => ListPerusahaan.fromJson(i))
            .toList();
}

class ListPerusahaan {
  final String product_thumb_img;
  final String category_name;
  final String product_description;
  final List<ListPerusahaanImages> products_images;

  ListPerusahaan(
      {this.product_thumb_img,
      this.category_name,
      this.product_description,
      this.products_images});

  ListPerusahaan.fromJson(Map jsonMap)
      : product_thumb_img = jsonMap['product_thumb_img'],
        category_name = jsonMap['category_name'],
        product_description = jsonMap['product_description'],
        products_images = (jsonMap['product_images'] as List)
            .map((i) => ListPerusahaanImages.fromJson(i))
            .toList();
}

class ListPerusahaanImages {
  final String product_image;

  ListPerusahaanImages({this.product_image});

  ListPerusahaanImages.fromJson(Map jsonMap) : product_image = jsonMap['image'];
}
