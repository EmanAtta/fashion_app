import 'package:flutter/material.dart';

class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/w_3.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              'Let Your Style Speak',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
