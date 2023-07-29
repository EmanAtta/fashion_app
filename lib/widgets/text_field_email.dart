import 'package:flutter/material.dart';

class Text_field extends StatefulWidget {
  final String text;
  final  String valid;
  final String message;
  const Text_field({super.key, required this.text,required this.valid,required this.message});//

  @override
  State<Text_field> createState() => _Text_fieldState();
}

class _Text_fieldState extends State<Text_field> {

   @override
  Widget build(BuildContext context) {
    return  Center(
      child: TextFormField(
          decoration:
          InputDecoration(labelText:widget.text,
          labelStyle:TextStyle(fontSize:30,fontWeight: FontWeight.bold),
          border: OutlineInputBorder(  borderRadius: BorderRadius.circular(20.0)),
          ),
          validator: (value){
            if (value!.contains(widget.valid)){
              return null;
            }
            else{
              return widget.message;
            }
          }
          ),
    );
  }
}
