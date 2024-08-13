import 'package:bmi/constant.dart';
import 'package:bmi/resultpage.dart';
import 'package:flutter/material.dart';

class mybtn extends StatelessWidget {
  const mybtn({super.key, required this.text, required this.ontap});
  final String text;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: bottomNavigatationBar,
          ),
        ),
        color: BottomNavigationBarColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: BottomNavigationBarHeight,
      ),
    );
  }
}
  //  onTap: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) {
  //           return Resultpage();
  //         }),
  //       );
  //     },