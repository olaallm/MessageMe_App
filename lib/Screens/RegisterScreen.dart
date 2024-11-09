import 'package:flutter/material.dart';
import 'package:messageme_app/components/button.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'ChatScreen.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});
static const String routeName='register';
  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
final _auth =FirebaseAuth.instance;
   late String Email;
 late  String Password;

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

      Padding(
        padding: const EdgeInsets.all(30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: (value){
            Email=value;
          },
          decoration: InputDecoration(
            hintText: 'Enter Your Email',
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,

            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),


            enabledBorder:OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple,width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ) ,
            focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe9c45c),width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ) ,
          ),
        ),
      ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              obscureText: true,
              onChanged: (value){
                Password=value;
              },
              decoration: InputDecoration(
                hintText: 'Enter Your  Password',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,

                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),


                enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ) ,
                focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe9c45c),width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ) ,
              ),
            ),
          ),
           Button(title: "Register",
               onpressed:() async {

                try{
                  final newUser= await _auth.createUserWithEmailAndPassword(
                      email: Email,
                      password: Password);
                  Navigator.pushNamed(context, ChatScreen.routeName);
                }catch(e){
                  print(e);
                }

               },

               color: Color(0xff995eea)),
        ],
      ),
    );
  }
}
