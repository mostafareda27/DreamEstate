
import 'package:dream_estate_project/modules/login/login_screen.dart';
import 'package:dream_estate_project/modules/search/search.dart';
import 'package:flutter/material.dart';
import 'modules/home/home_screen.dart';
import 'modules/on_boarding_screen/on_boarding_screen.dart';



void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
 // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: LoginScreen(),
    );
  }
}




