import 'package:flutter/material.dart';
import '../Screens/input_page.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonText, required this.onTap});

  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            )),
        margin: EdgeInsets.only(top: 10.0),
        color: bottomBarColor,
        height: bottomBarHeight,
        width: double.infinity,
      ),
    );
  }
}
