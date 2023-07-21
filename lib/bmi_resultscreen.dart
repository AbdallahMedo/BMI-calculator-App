import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  bool isMale=true;


  final double result;
  final int age;
  BmiResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI RESULT',
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text(
                'Gender : ${isMale ?' MALE':' FEMALE'}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 9.0,
              ),

              Text(
                'Result : ${result}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 9.0,
              ),

              Text(
                'Age : ${age}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
