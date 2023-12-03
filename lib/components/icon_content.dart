import 'package:flutter/material.dart';


class IconColumn extends StatelessWidget {
  const IconColumn(this.iconModel, this.containerText);
  final IconData iconModel;
  final String? containerText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconModel,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          containerText!,
          style: TextStyle(fontSize: 18.0),
        )
      ],
    );
  }
}

