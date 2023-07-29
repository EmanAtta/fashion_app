import 'package:flutter/material.dart';

class TextFieldpass extends StatefulWidget {
  final String text;

  const TextFieldpass({super.key, required this.text,});

  @override
  State<TextFieldpass> createState() => _TextFieldpassState();
}

class _TextFieldpassState extends State<TextFieldpass> {
  bool _obscureText = true;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  // final TextEditingController emailcontroller =TextEditingController();
  // final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: TextFormField(
          controller: passwordController,

          obscureText: _obscureText ,
          decoration: InputDecoration(suffixIcon: IconButton(
            icon: _obscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
            labelText:widget.text,
            labelStyle:TextStyle(fontSize:30,fontWeight: FontWeight.bold),
            border: OutlineInputBorder(  borderRadius: BorderRadius.circular(20.0)),
            ),
          validator: (value){
              if (value!.length>7){
                return null;
              }
              else{
                return "In correct Password!";
              }
            }
            ),
    );
  }
}
