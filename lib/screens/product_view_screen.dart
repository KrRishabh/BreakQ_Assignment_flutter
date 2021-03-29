import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:breakq_assignment/services/constants.dart';
import 'package:breakq_assignment/services/item_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatefulWidget {
  Item currentItem;
  ProductPage(this.currentItem);
  @override
  _ProductPageState createState() => _ProductPageState(currentItem);
}

class _ProductPageState extends State<ProductPage> {
  Item currentItem;
  _ProductPageState(this.currentItem);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        title: Text(
          currentItem.productName,
          style: TextStyle(
              color: Colors.black54,
              fontSize: 30,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: FadeInImage.assetNetwork(
                  height: 250,
                  fadeInCurve: Curves.easeIn,
                  placeholder: 'assets/placeholderimage.png',
                  image: currentItem.productImage,
                )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: kDarkBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    currentItem.productName,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cagliostro',
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '- by ' + currentItem.productBrand,
                    style: TextStyle(
                        color: Colors.white54,
                        fontFamily: 'Cagliostro',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Color:  ' + currentItem.productColor,
                            style: kUIText,
                          ),
                          Text(
                            'Material:  ' + currentItem.productMaterial,
                            style: kUIText,
                          ),
                          Text(
                            'Launch Year:  ' +
                                currentItem.productLaunchDate.substring(0, 4),
                            style: kUIText,
                          ),
                          Text(
                            'Category:  ' + currentItem.productCategory,
                            style: kUIText,
                          ),
                        ],
                      ),
                      Text(
                        '₹ ' + currentItem.productCost,
                        style: kUIText.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                    ],
                  ),
                  Text(
                    currentItem.productSummary,
                    style: TextStyle(color: Colors.white54),
                  ),
                  FlatButton(
                      onPressed: null,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: kButtonStylePink,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.cartPlus,
                                size: 20, color: Colors.white),
                            Text(
                              '  Add to Cart',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
