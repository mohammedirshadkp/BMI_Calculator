import 'package:bmicalculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import 'package:bmicalculator/calculate_brain.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultMessage;

  ResultPage({required this.bmiResult,required this.resultText,required this.resultMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF24D876)),
                  ),
                  Text(
                    bmiResult,
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    resultMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        BottomButton(buttonText: 'RE - CALCULATE',onTap: (){
          Navigator.pop(context);
        },),
        ],
      ),
    );
  }
}
