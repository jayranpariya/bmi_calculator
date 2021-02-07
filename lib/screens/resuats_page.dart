import 'package:bmi_calculator/counstants.dart';
import 'package:flutter/material.dart';
import '../components/reussable_card.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/bmicalculator_brian.dart';

class Resultspage extends StatelessWidget {
  Resultspage(
      {@required this.bmiresult,
      @required this.resulttext,
      @required this.interpretation});
  final String bmiresult;
  final String resulttext;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIM calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                " YOUR RESULAT",
                textAlign: TextAlign.center,
                style: titaltextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusablecard(
              colour: activeCardcolour,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resulttext,
                    style: resulattextstyle,
                  ),
                  Text(
                    bmiresult,
                    style: kBMItxtstyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kbodytext,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Bottombutton(
            buttonText: "Re-Calculator",
            ontab: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
