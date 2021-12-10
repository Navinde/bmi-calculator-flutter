import 'dart:html';

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconwidget.dart';
import 'reuseable.dart';

//  Color malecardcolor = inactiveCardColor;
//   Color femalecardcolor = inactiveCardColor;


// void updatecolor( gender){
  


  // if (gender == Gender.male){
  //   malecardcolor = activeCardColor;
  //   femalecardcolor= inactiveCardColor;
  // }else if (gender==Gender.female){
  //   femalecardcolor = activeCardColor;
  //   malecardcolor= inactiveCardColor;
  // }
// }




class InputPage extends StatefulWidget {
  

  @override
  _InputPageState createState() => _InputPageState();
}


enum Gender {male, female}
class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int lheight = 150;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Expanded(child: Row(children: [
      Expanded(
        child: reuseableCard(
          onPress: (){
            setState(() {
              selectedGender=(Gender.male);
            });
          },
          color:selectedGender == Gender.male?
          activeCardColor:inactiveCardColor,
              cardChild: iconwidget(
                icon: FontAwesomeIcons.mars,label:'MALE')),
        ),
      
      Expanded(child: reuseableCard(
        onPress: (){
          setState(() {
            selectedGender =(Gender.female);
          });
        },
        color:selectedGender == Gender.female?
        activeCardColor:inactiveCardColor,
        cardChild: iconwidget(
          icon: FontAwesomeIcons.venus,
          label:'FEMALE',),),
      )
      ],)),
      Expanded(child: reuseableCard(
        color:activeCardColor,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          Text ('HEIGHT',
          style:labelStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
            Text(
              height .toString(), 
              style: textstyle
            ),
            Text(
              'cm',
              style: labelStyle,


            ),
          ],),
          Slider(
            min :120,
            max :220,
            value:height.toDouble(),
           onChanged: (value){
             setState(() {
               lheight= value.round();
             });
           }),
        ],
        ),)),
      
      Expanded(child: Row(children: [
      Expanded(child: reuseableCard(color:activeCardColor)
      ),
    
      Expanded(child: reuseableCard(color:activeCardColor)
      ),
      ]
      )
      ),
      Container(
        height: height,
        color: bottomcolor,
        // width: double.infinity,
        // margin: EdgeInsets.only(top: 15.0),
      )
      
      
      ]
      ),
     
      
      
      
      
      
      
      );
      
  }
}



