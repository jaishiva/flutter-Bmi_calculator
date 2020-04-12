import 'customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum Gender {
  male,female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = containerColor;
  Color femaleCardColor = containerColor;
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableContainer(
                  colour: selectedGender == Gender.male ? containerActiveColorMale: containerColor,
                  cardChild: MaleFemale(gender: 'MALE',genderIcon: FontAwesomeIcons.mars,),
                  gesture: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                )),
                Expanded(
                  child: ReusableContainer(colour: selectedGender == Gender.female ? containerActiveColorFemale : containerColor,
                    cardChild: MaleFemale(gender: 'FEMALE',genderIcon: FontAwesomeIcons.venus,),
                    gesture: (){setState(() {
                      selectedGender = Gender.female;
                    });},
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableContainer(
              colour: containerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT',style: labelStyle2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text('$height',style: labelStyle1,),
                      Text('cm',style: labelStyle2)
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                      overlayShape: RoundSliderThumbShape(enabledThumbRadius: 15)
                      ),
                    child: Slider(
                      value: height.toDouble(), 
                      onChanged: (double newHeight){setState(() {
                      height = newHeight.round();}); }, 
                      min: 0,
                      max: 200,
                      divisions: null,
                      activeColor: containerActiveColorFemale,),
                  )
                ],
              ),
            )
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableContainer(
                  colour: containerColor,
                  cardChild: AgeWeight(
                    unit: 'KG',
                    unitName: 'WEIGHT',
                    weightage: weight,
                    addAgeWeight: (){
                      setState(() {
                        weight++;
                      });
                    },
                    reduceAgeWeight: (){
                      setState(() {
                        if(weight>0){weight--;}
                      });
                    },
                  ),
                  ),
                  ),
                Expanded(
                  child: ReusableContainer(
                    colour: containerColor,
                    cardChild: AgeWeight(
                    unit: '  ',
                    unitName: 'AGE',
                    weightage: age,
                    addAgeWeight: (){
                      setState(() {
                        age++;
                      });
                    },
                    reduceAgeWeight: (){
                      setState(() {
                        if(age>0){age--;}
                      });
                    },
                  ),
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: (){
                bmi = (weight/((height/100)*(height/100))).toStringAsFixed(2);
                Navigator.pushNamed(context, '/calculator');
              },
              child: Container(
                child: Center(child: Text('CALCULATE',style: labelStyle2,)),
                color: bottomBarColor,
                margin: EdgeInsets.only(top : 10),
                height: 80,
              ),
            ),
          )
        ],
      ),

    );
  }
}

