import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statefull_widget/bmi_resultscreen.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isMale=true;
  double hight=125.0;
  double weight=40.0;
  int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isMale=true;
                        });

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:isMale ?Colors.blue: Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              height: 90.0,
                              width: 90.0,

                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:isMale ? Colors.grey:Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/female.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey,

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${hight.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: hight,
                      max: 220,
                      min: 80,
                      onChanged: (value)
                      {
                        setState(() {
                          hight=value;
                        });
                      },

                    ),

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey
    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight:FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                mini: true,
                                child: Icon(Icons.remove),

                                  ),
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                mini: true,
                                child: Icon(Icons.add),

                                  ),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey
    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight:FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${weight.round()}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                mini: true,
                                child: Icon(Icons.remove),

                                  ),
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                mini: true,
                                child: Icon(Icons.add),

                                  ),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            height: 50.0,
            child: MaterialButton(
              onPressed: () {
                double result=weight / pow(hight/100, 2);
                print(result.round());


                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(contxt)=>BmiResultScreen(
                      age: age,
                      isMale: isMale,
                      result: result,
                    ) ,
                  ),
                );

              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
