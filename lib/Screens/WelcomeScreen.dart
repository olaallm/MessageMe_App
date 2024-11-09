import 'package:flutter/material.dart';
import 'package:messageme_app/components/button.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200, // Set your desired height here
              child: Image.asset("assets/images/images.png"),
            ),
            // const SizedBox(height: 1), // Add space if needed between image and text
            const Text(
              "MessageMe",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 20 ,),
           Button(title: "Sign In",onpressed: (){},color: Color(0xffe9c45c)),
            Button(title: "Register",onpressed: (){}, color: Color(0xff995eea), )

          ],
        ),
      ),
    );
  }
}
