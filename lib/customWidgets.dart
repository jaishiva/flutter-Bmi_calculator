import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class MaleFemale extends StatelessWidget {
final String gender;
final IconData genderIcon;
MaleFemale({this.gender,this.genderIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(height: 10,),
        Text(gender,style: labelStyle,)
      ],
    );
  }
}

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.colour,this.cardChild,this.gesture});

  final Color colour;
  final Widget cardChild;
  final Function gesture;
  @override
  Widget build(BuildContext context) {
    return 
    GestureDetector(
      onTap: gesture,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15)
          ),
          child: cardChild,
        ),
   );
  }
}

class CircleButton extends StatelessWidget {
final Function func;
final IconData icon;
CircleButton({@required this.func,@required this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipper: null,
      child: Material(
        color: containerActiveColorFemale, // button color
        child: InkWell(
          splashColor: Colors.blue, // inkwell color
          child: SizedBox(width: 60, height: 60, child: Icon(icon)),
          onTap: func,
        ),
      ),
    );
  }
}

class AgeWeight extends StatelessWidget {
final Function addAgeWeight;
final Function reduceAgeWeight;
final String unitName;
final int weightage;
final String unit;
AgeWeight({this.addAgeWeight,this.reduceAgeWeight,this.unitName,this.weightage,this.unit});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex:1,
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Text(unitName,style: labelStyle2,)
          )
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              SizedBox(width: 20,),
              Text('$weightage',style: labelStyle1,),
              Text(unit,style: labelStyle2,),
            ],
          ),
        ),
        // SizedBox(height: 10,),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CircleButton(
              icon: FontAwesomeIcons.plus,
              func: addAgeWeight
              ),
             CircleButton(
              icon: FontAwesomeIcons.minus,
              func: reduceAgeWeight
              ),
          ],
      ),
        )
      ],
    );
  }
}

void setBMI(){
  bmi = (weight/((height/100)*(height/100))).toStringAsFixed(1);
  bmiText = 'BMI should only be calculated for age group 18-65';
  if(double.parse(bmi)  >= 18 && double.parse(bmi) <= 24){
    bmiCondition = 'NORMAL';
    if(age >= 18 && age <= 65){
      bmiText = 'Normal BMI is 18-24. Good Job';
    }
  }
  else if(double.parse(bmi)  < 18){
    bmiCondition = 'UNDER WEIGHT';
    if(age >= 18 && age <= 65){
      bmiText = 'Normal BMI is 18-24. EAT MORE!!';
    }
  }
  else{
    bmiCondition = 'OVER WEIGHT';
    if(age >= 18 && age <= 65){
      bmiText = 'Normal BMI is 18-24. EAT LESS!!';
    }
  }
}