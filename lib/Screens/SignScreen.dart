import 'package:flutter/material.dart';
import 'package:messageme_app/components/button.dart';

class Signscreen extends StatefulWidget {
  const Signscreen({super.key});
static const String routeName='SignScreen';
  @override
  State<Signscreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<Signscreen> {
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

              },
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
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
            child: Button(title: "Sign In", onpressed: (){

            }, color: Color(0xffe9c45c)),
          ),
        ],
      ),
    );
  }
}
