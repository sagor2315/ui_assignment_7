import 'package:flutter/material.dart';
import 'package:ui_assignment_7/my_app_home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Food Burger App",
      home: MyAppHomePage(),
    );
  }
}