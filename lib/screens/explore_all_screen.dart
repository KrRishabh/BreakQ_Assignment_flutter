import 'package:flutter/material.dart';
import 'package:breakq_assignment/services/constants.dart';
import 'package:breakq_assignment/services/items_provider.dart';
import 'package:breakq_assignment/services/item_model.dart';

class ExploreAllScreen extends StatefulWidget {
  static const String id = 'ExploreAllScreen';
  @override
  _ExploreAllScreenState createState() => _ExploreAllScreenState();
}

class _ExploreAllScreenState extends State<ExploreAllScreen> {
  ItemProvider _itemProvider = ItemProvider();
  List<Item> itemList;
  fetchItemList() {
    itemList = _itemProvider.items;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: FloatingActionButton(
          onPressed: () async {
            await _itemProvider.fetchAllItems();
            print(_itemProvider.items[1].productName);
            fetchItemList();
            print(itemList[0].productName);
          },
          child: Container(
            decoration: kButtonStylePink,
          ),
        ),
      ),
    ));
  }
}
