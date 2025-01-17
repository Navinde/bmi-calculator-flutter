import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class iconwidget extends StatelessWidget {
 final IconData icon;
 final String label;

 iconwidget({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment:MainAxisAlignment.center,
    children: [
      Icon(icon,
      size: 100.0,),
      SizedBox(
        height: 15.0,),
      Text(
        label, 
        style: labelStyle)
    ],);
  }
}