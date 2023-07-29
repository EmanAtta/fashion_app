import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShowEmail extends StatefulWidget {
  const ShowEmail({super.key});

  @override
  State<ShowEmail> createState() => _ShowEmailState();
}

class _ShowEmailState extends State<ShowEmail> {
  @override
  void initState() {
    super.initState();
    getEmail();
    getfullname();
    getusername();
    getemail1();
  }

  String userEmail = "";
  String fullName = "";
  String username = "";
  String email1 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(159, 219, 211, 188),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Text(userEmail),
      Text('UserEmail:', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color:Color.fromARGB(215, 157, 91, 67) )),
      SizedBox(height: 10.0),
      Text(userEmail, style: TextStyle(fontSize: 20.0,color:Color.fromARGB(180, 89, 99, 76))),
      SizedBox(height: 15.0),
      Text('FullName:', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color:Color.fromARGB(215, 157, 91, 67))),
      SizedBox(height: 10.0),
      Text(fullName, style: TextStyle(fontSize: 20.0,color:Color.fromARGB(180, 89, 99, 76))),
      SizedBox(height: 15.0),
      Text('UserName:', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color:Color.fromARGB(215, 157, 91, 67))),
      SizedBox(height: 10.0),
      Text(username, style: TextStyle(fontSize: 20.0,color:Color.fromARGB(180, 89, 99, 76))),
      SizedBox(height: 15.0),
      Text('Email:', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color:Color.fromARGB(215, 157, 91, 67))),
      SizedBox(height: 10.0),
      Text(email1, style: TextStyle(fontSize: 20.0,color:Color.fromARGB(180, 89, 99, 76))),
    ],
        ),
      ),
    );
  }

  getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    userEmail = prefs.getString("email") ?? "--";
    setState(() {});
  }

  getfullname() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    fullName = prefs.getString("fullname") ?? "--";
    setState(() {});
  }

  getusername() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    username= prefs.getString("username") ?? "--";
    setState(() {});
  }

  getemail1() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
  email1 = prefs.getString("email1") ?? "--";
    setState(() {});
  }
}
