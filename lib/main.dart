import 'package:flutter/material.dart';
import 'package:breakq_assignment/screens/opening_screen.dart';

void main() {
  return runApp(BreakQ());
}

class BreakQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BreakQ',
      initialRoute: OpeningScreen.id,
      routes: {
        OpeningScreen.id: (context) => OpeningScreen(),
      },
    );
  }
}
