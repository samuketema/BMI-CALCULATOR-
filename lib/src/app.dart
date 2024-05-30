import 'package:flutter/material.dart';
import 'Screens/imput_page.dart';

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark(),
      title:'BMI CALCULATOR',
      home:ImputPage()
    );
  }
}