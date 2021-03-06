import 'package:flutter/material.dart';
import 'inputpage.dart';
import 'constants.dart';
import 'calculator.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: appBackground,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => InputPage(),
        '/calculator' : (context) => Calculator(),
      },
    );
  }
}



