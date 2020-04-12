import 'package:flutter/material.dart';

const appBackground = Color(0xFF0A0E21);
const containerColor = Color(0xFF1D1E33);
const bottomBarColor = Color(0xFFEB1555);
const containerActiveColorFemale = Color(0xFFEB1555);
const containerActiveColorMale = Colors.blue;
const labelStyle = TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                   );
const labelStyle1 = TextStyle(
                    fontSize: 60,
                    fontWeight:FontWeight.w900
                   );
const labelStyle2 = TextStyle(fontSize: 22);
const labelStyle3 = TextStyle(
                    fontSize: 40,
                    fontWeight:FontWeight.w900
                   );
const labelStyle4 = TextStyle(
                    fontSize: 30,
                    fontWeight:FontWeight.bold,
                    color: Colors.green
                   );
const labelStyle5 = TextStyle(
                    fontSize: 30,
                    fontWeight:FontWeight.w500,
                    
                   );
int height = 160;
int weight = 60;
int age = 19;
String bmi = (weight/((height/100)*(height/100))).toStringAsFixed(2);
String bmiCondition = '';
String bmiText = '';

