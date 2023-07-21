import 'package:flutter/material.dart';
import 'package:statefull_widget/bmi_calculator.dart';
import 'package:statefull_widget/bmi_resultscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home:BmiCalculator() ,
    );
  }

}