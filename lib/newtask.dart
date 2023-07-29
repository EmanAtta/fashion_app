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
  }

  String userEmail = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(159, 219, 211, 188),
      body: Center(
        child: Text(userEmail),
      ),
    );
  }

  getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    userEmail = prefs.getString("email") ?? "--";
    setState(() {});
  }
}
