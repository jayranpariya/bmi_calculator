import 'package:flutter/material.dart';

class Roundiconbutton extends StatelessWidget {
  Roundiconbutton({@required this.icon, @required this.onpress});
  final IconData icon;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
