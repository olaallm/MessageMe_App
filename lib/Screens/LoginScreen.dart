import 'package:flutter/material.dart';
import 'package:messageme_app/components/button.dart';
import 'package:messageme_app/components/textField.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 180,
            child: Image.asset("assets/images/images.png"),
          ),

          Textfield(hintText: "Enter your Email",),
          Textfield(hintText: "Enter your Password",),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Button(title: "Sign In", onpressed: (){}, color: Color(0xffe9c45c)),
          ),
        ],
      ),
    );
  }
}
