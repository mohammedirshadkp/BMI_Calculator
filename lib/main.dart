import 'package:flutter/material.dart';
import 'package:bmicalculator/Screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme:const AppBarTheme(color: Color(0xFF0A0E21)) ,
         scaffoldBackgroundColor:  const Color(0xFF0A0E21),
      ),
      home:  InputPage(),
    );
  }
}


