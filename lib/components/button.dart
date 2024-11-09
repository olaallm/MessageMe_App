
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   Button({super.key,required this.title,required this.onpressed,required this.color});
  String title;
  final Function onpressed;
  final color;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(15),
        child: MaterialButton(
          onPressed: ()=>onpressed,
          minWidth: 200,height: 42,
          child: Text(title,style:  const TextStyle(
            color: Colors.black,
          ),),),
      ),
    );
  }
}
