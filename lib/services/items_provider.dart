import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:breakq_assignment/services/item_model.dart';
import 'dart:convert';

class ItemProvider {
  List<Item> _allItems = <Item>[];
  String productUrl = 'https://6037c52d54350400177235f5.mockapi.io/product';

  Future<void> fetchAllItems() async {
    final response = await http.get(productUrl);

    if (response.statusCode == 200) {
      var list = json.decode(response.body) as List;
      // iterate over the list and map each object in list to Img by calling Img.fromJson
      _allItems = list.map((i) => Item.fromJson(i)).toList();
    } else {
      print('Came into Else on Item provider');
    }
  }

  List<Item> get items {
    return [..._allItems];
  }
}
