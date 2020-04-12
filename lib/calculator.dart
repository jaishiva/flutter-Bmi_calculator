import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'customWidgets.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR RESULTS'),
        backgroundColor: containerActiveColorFemale,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: double.infinity,
            color: containerColor,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(age >18 ? '':'Below 18y BMI is not a valid measurement',style: labelStyle2,),
              Text('BMI is $bmi',style: labelStyle1,)
            ],

          ),
        ),
      ),
    );
  }
}