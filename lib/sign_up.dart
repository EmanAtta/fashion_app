//import 'dart:js_util';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:iti_flutter_project/widgets/buttons.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:iti_flutter_project/widgets/text_field_email.dart';
// import 'package:iti_flutter_project/widgets/text_field_pass.dart';

import 'homelayout.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  bool _obscureText = true;

  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _username = TextEditingController();
  // final TextEditingController _email = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(
          onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.keyboard_arrow_left,color: Color.fromARGB(180, 89, 99, 76)
        ),),
        backgroundColor:const Color.fromARGB(159, 219, 211, 188),
        elevation: 0,

      ),
      body: Container(
        //height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
          color: Color.fromARGB(159, 219, 211, 188),
          /*image: DecorationImage(
            image: AssetImage('assets/background4.jpg'),
            fit: BoxFit.fill,
          ),*/
        ),
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sign up  ",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(215, 157, 91, 67)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                        controller: _fullname,
                        decoration: InputDecoration(
                          labelText: "  full name",
                          labelStyle:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                          fillColor:Colors.white,

                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromARGB(180, 89, 99, 76),width: 2),

                              borderRadius: BorderRadius.circular(22.0)),
                        ),
                        validator: (value) {
                          if (value!.isNotEmpty) {
                            return null;
                          } else {
                            return "Please write your full name";
                          }
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                        controller: _username,
                        decoration: InputDecoration(
                          labelText: "  User name",
                          labelStyle:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                          fillColor:Colors.white,

                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromARGB(180, 89, 99, 76),width: 2),

                              borderRadius: BorderRadius.circular(22.0)),
                        ),
                        validator: (value) {
                          if (value!.isNotEmpty) {
                            return null;
                          } else {
                            return "Please write user name";
                          }
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "  Email",
                          labelStyle:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                          fillColor:Colors.white,

                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromARGB(180, 89, 99, 76),width: 2),

                              borderRadius: BorderRadius.circular(22.0)),
                        ),
                        validator: (value) {
                          if (value!.contains("@gmail.com")) {
                            return null;
                          } else {
                            return "not valid e-mail";
                          }
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                        controller: passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: _obscureText
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          labelText: "  Password",
                          labelStyle:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                          fillColor:Colors.white,

                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromARGB(180, 89, 99, 76),width: 2),

                              borderRadius: BorderRadius.circular(22.0)),
                        ),
                        validator: (value) {
                          if (value!.length > 7) {
                            return null;
                          } else {
                            return "Should be more than 7 characters";
                          }
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: _obscureText
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        labelText: "  Confirm password",
                        labelStyle:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                        fillColor:Colors.white,

                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color.fromARGB(180, 89, 99, 76),width: 2),

                            borderRadius: BorderRadius.circular(22.0)),
                      ),
                      validator: (value) {
                        if (value != passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        savefullname(_fullname.text);
                        saveusername(_username.text);
                        // saveEmail(emailController.text);
                        saveEmail1(emailController.text);
                        FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => homelayout(
                                    fullname: _fullname.text,
                                    username: _username.text,
                                    email: emailController.text,
                                    email1:"" ,
                                  )),
                        );
                      }
                      ;
                    },
                    child: Buttons(
                      button_text: "Sign up",
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  savefullname(String fullname) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("fullname", fullname);
  }

  saveusername(String username) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("username", username);
  }

  // saveEmail(String email) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString("email", email);
  // }

  saveEmail1(String email1) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email1", email1);
  }
}
