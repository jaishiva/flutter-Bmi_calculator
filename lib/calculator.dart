import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'customWidgets.dart';

class Calculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: containerActiveColorFemale,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 10,),
          Expanded(child: Text('YOUR RESULTS',style: labelStyle3,textAlign: TextAlign.center)),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              colour: containerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('$bmiCondition',style: labelStyle4,),
                  Text('$bmi',style : labelStyle1 ),
                  Text('$bmiText',style : labelStyle5,textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: Container(
                child: Center(child: Text('RE-CALCULATE',style: labelStyle2,)),
                color: bottomBarColor,
                margin: EdgeInsets.only(top : 10),
                height: 80,
              ),
            ),
          )
        ],
      )
    );
  }
}