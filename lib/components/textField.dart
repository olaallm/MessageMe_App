import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
   Textfield({super.key,required this.hintText});
   String hintText;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextField(
        onChanged: (value){},
        decoration: InputDecoration(
          hintText: hintText,
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
    );
  }
}
