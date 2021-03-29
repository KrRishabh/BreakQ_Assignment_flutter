import 'package:breakq_assignment/screens/explore_all_screen.dart';
import 'package:flutter/material.dart';
import 'package:breakq_assignment/services/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:breakq_assignment/services/items_provider.dart';
import 'package:breakq_assignment/services/item_model.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class OpeningScreen extends StatefulWidget {
  static const String id = "OpeningScreen";
  @override
  _OpeningScreenState createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  bool showSpinner = false;
  ItemProvider _itemProvider = ItemProvider();
  List<Item> allItems;

  fetchItemList() async {
    setState(() {
      showSpinner = true;
    });
    await _itemProvider.fetchAllItems();
    allItems = _itemProvider.items;
  }

  @override
  void initState() {
    //fetchItemList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(120, 50, 60, 100),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 250,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    FaIcon(FontAwesomeIcons.shoppingCart,
                        size: 80, color: Color.fromARGB(255, 255, 190, 230)),
                    Text(
                      'BreakQ',
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Pacifico', //'JockeyOne',
                          color: Color.fromARGB(255, 255, 120, 180)),
                    ),
                    Text(
                      'Hastle Free Offline Shopping',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'OpenSans',
                          color: Colors.white70),
                    ),
                  ],
                ),
              ),
              showSpinner
                  ? SpinKitThreeBounce(
                      color: kThemeColor,
                      size: 40,
                    )
                  : SizedBox(
                      height: 40,
                    ),
              FlatButton(
                  onPressed: () async {
                    //await _itemProvider.fetchAllItems();
                    //Navigator.pushNamed(context, ExploreAllScreen.id);
                    await fetchItemList();
                    setState(() {
                      showSpinner = false;
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ExploreAllScreen(allItems);
                    }));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 255, 120, 180)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.wpexplorer,
                            size: 30, color: Colors.white),
                        Text(
                          '  Explore',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  )),
            ],
          )),
    ));
  }
}
