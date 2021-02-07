import 'package:flutter/material.dart';
import '../counstants.dart';

class Bottombutton extends StatelessWidget {
  Bottombutton({@required this.buttonText, @required this.ontab});

  final Function ontab;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: Container(
          child: Center(
            child: Text(
              buttonText,
              style: lagerbuttontextstyle,
            ),
          ),
          margin: EdgeInsets.only(top: 15.0),
          width: double.infinity,
          height: bottContainerHeigtht,
          color: bottomcountainercolour),
    );
  }
}
