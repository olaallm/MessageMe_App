import 'package:flutter/material.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Container(
             child: Image.asset("assets/images/images.png"),

           ),
           Text("MessageMe",style: TextStyle(
               fontSize: 40,
               fontWeight: FontWeight.w900,
               color: Colors.deepPurple
           ),),

         ],
      ),
    );
  }
}
