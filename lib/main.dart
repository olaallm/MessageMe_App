import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messageme_app/Screens/LoginScreen.dart';
import 'package:messageme_app/Screens/RegisterScreen.dart';
import 'package:messageme_app/Screens/WelcomeScreen.dart';

void main(){

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen(),
    );
  }
}
