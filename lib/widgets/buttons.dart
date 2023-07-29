import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String button_text;
  const Buttons({super.key,required this.button_text});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        
        height: 45, width: 180,
        decoration: BoxDecoration(color: Color.fromARGB(215, 157, 91, 67),
          borderRadius: BorderRadius.circular(28),border: Border.all(color: Color.fromARGB(225, 148, 117, 103)),
          boxShadow: [BoxShadow(
            blurRadius: 2,
            spreadRadius: 1,
          )]
    
        ),
    
        child: Center(child: Text(widget.button_text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color.fromARGB(159, 219, 211, 188) )),),
        
      ),
    );
    
  }
}
