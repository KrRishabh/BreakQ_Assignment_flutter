import 'package:flutter/material.dart';
import 'package:breakq_assignment/services/constants.dart';
import 'package:breakq_assignment/services/items_provider.dart';
import 'package:breakq_assignment/services/item_model.dart';
import 'package:breakq_assignment/screens/product_view_screen.dart';

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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        title: Text(
          '  Explore',
          style: TextStyle(
              color: Colors.black54,
              fontSize: 30,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w900),
        ),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return Center(
              child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductPage(itemList[index])));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: FadeInImage.assetNetwork(
                        height: 100,
                        fadeInCurve: Curves.easeIn,
                        placeholder: 'assets/placeholderimage.png',
                        image: (index % 2 == 0)
                            ? 'https://expertphotography.com/wp-content/uploads/2019/07/photography-lenses-oranges.jpg'
                            : 'https://karltayloreducation.com/wp-content/uploads/2017/12/Chanel5_product_photography.jpg',
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        itemList[index].productName,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rs. ' + itemList[index].productCost,
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ));
        }),
      ),
    ));
  }
}
