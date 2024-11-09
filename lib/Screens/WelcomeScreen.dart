import 'package:flutter/material.dart';
import 'package:messageme_app/Screens/SignScreen.dart';
import 'package:messageme_app/Screens/RegisterScreen.dart';
import 'package:messageme_app/components/button.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  static const String routeName = 'Welcomescreen';

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
            // Display the app's logo or image
            SizedBox(
              height: 200, // Adjust the height as needed
              child: Image.asset("assets/images/images.png"), // Make sure the path is correct
            ),
            const SizedBox(height: 20), // Optional space between the image and text
            const Text(
              "MessageMe",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.deepPurple, // Color of the text
              ),
            ),
            const SizedBox(height: 20), // Space between title and buttons

            // Sign In Button
            Button(
              title: "Sign In",
              onpressed: () {
               Navigator.pushNamed(context, Signscreen.routeName);
              },
              color: const Color(0xffe9c45c), // Button color
            ),

            const SizedBox(height: 30), // Space between buttons

            // Register Button
            Button(
              title: "Register",
              onpressed: () {
                Navigator.pushNamed(context, Registerscreen.routeName);
              },
              color: const Color(0xff995eea), // Button color
            ),
          ],
        ),
      ),
    );
  }
}
