import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messageme_app/Screens/SignScreen.dart';

import 'Screens/ChatScreen.dart';
import 'Screens/RegisterScreen.dart';
import 'Screens/WelcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

     initialRoute: Welcomescreen.routeName,
      routes: {
        Welcomescreen.routeName:(context)=>Welcomescreen(),
        Registerscreen.routeName:(context)=>Registerscreen(),
        Signscreen  .routeName:(context)=>Signscreen(),
        ChatScreen.routeName:(context)=>ChatScreen(),
      },
    );
  }
}
