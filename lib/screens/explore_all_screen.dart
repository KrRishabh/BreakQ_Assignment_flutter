import 'package:flutter/material.dart';
import 'package:breakq_assignment/services/constants.dart';
import 'package:breakq_assignment/services/items_provider.dart';
import 'package:breakq_assignment/services/item_model.dart';

class ExploreAllScreen extends StatefulWidget {
  List<Item> allItemsObtained;
  ExploreAllScreen(this.allItemsObtained);
  static const String id = 'ExploreAllScreen';
  @override
  _ExploreAllScreenState createState() =>
      _ExploreAllScreenState(allItemsObtained);
}

class _ExploreAllScreenState extends State<ExploreAllScreen> {
  ItemProvider _itemProvider = ItemProvider();
  int count = 0;
  List<Item> itemList;
  _ExploreAllScreenState(this.itemList);

  fetchItemList() async {
    await _itemProvider.fetchAllItems();
    itemList = _itemProvider.items;
  }

  @override
  void initState() {
    print('got inside initstate top');
    print(itemList[0].productName);
    //fetchItemList();
    super.initState();
    // _itemProvider.fetchAllItems().then((response) {
    //   setState() {
    //     print('got inside initstate %%');
    //     itemList = _itemProvider.items;
    //   }
    // });
  }

  @override
  void didChangeDependencies() {
    //fetchItemList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: FloatingActionButton(
          onPressed: () async {
            // await _itemProvider.fetchAllItems();
            // print(_itemProvider.items[1].productName);
            //await fetchItemList();
            //itemList = _itemProvider.items;
            print(itemList[count].productName);
            count++;
          },
          child: Container(
            decoration: kButtonStylePink,
            child: Text(itemList[0].productName),
          ),
        ),
      ),
    ));
  }
}
