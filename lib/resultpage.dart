import 'package:bmi/button.dart';
import 'package:bmi/constant.dart';
import 'package:bmi/resuseableCards.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  const Resultpage({super.key,required this.bmiresult,required this.getInterpretion,required this.getResult});

  final String bmiresult;
  final String getResult;
  final String getInterpretion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Results',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Text(
               getResult,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: mycontainer(
                color: activeCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      getResult,
                      textAlign: TextAlign.center,
                      style: resultTextStyle,
                    ),
                    Text(
                     bmiresult,
                      textAlign: TextAlign.center,
                      style: bmiscore,
                    ),
                    Text(
                     getInterpretion,
                      textAlign: TextAlign.center,
                      style: bodyTextStyle,
                    )
                  ],
                ),
              )),
          mybtn(
              text: 'Re calculate BMI',
              ontap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
