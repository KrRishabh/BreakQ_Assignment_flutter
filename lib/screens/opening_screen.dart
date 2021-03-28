import 'package:flutter/material.dart';
import 'package:breakq_assignment/services/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OpeningScreen extends StatefulWidget {
  static const String id = "OpeningScreen";
  @override
  _OpeningScreenState createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(160, 50, 60, 100),
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
                        size: 80, color: Color.fromARGB(250, 255, 180, 220)),
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
              Divider(
                thickness: 2,
                indent: 100,
                endIndent: 100,
              ),
              FlatButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, Distance360Screen.id);
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
