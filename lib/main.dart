import 'package:bmi/inputpage.dart';
import 'package:bmi/resultpage.dart';
import 'package:bmi/screen0.dart';
import 'package:bmi/screen1.dart';
import 'package:bmi/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Screen0(),
      //   '/first':(context)=>Screen1(),
      //   '/second':(context)=>Screen2(),
        
      // },
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
    );
  }
}


