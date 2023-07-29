// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class types_app extends StatelessWidget {
  const types_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(159, 219, 211, 188),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 10),
            Container(
                width: 350,
                height: 75,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 194, 187, 166),
                    borderRadius: BorderRadius.circular(30),
                        
                    border: Border.all(
                      width: 2.5,
                      color: Color.fromARGB(215, 157, 91, 67),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Jeans",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                      ),
                     SizedBox(width: 85),
                    ClipOval(
                      child: Image(
                        
                        image: AssetImage("assets/js.jpg"),
                        width: 75,
                        height: 800,
                        fit: BoxFit.cover,

                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                )),
            ////////////////////////////////////
            SizedBox(height: 20),
            Container(
                width: 350,
                height: 75,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 194, 187, 166),
                    borderRadius: BorderRadius.circular(30
                        ),
                    border: Border.all(
                      width: 2.5,
                      color:  Color.fromARGB(215, 157, 91, 67),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Skirts",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold ,color: Color.fromARGB(215, 157, 91, 67)),
                    ),
                    SizedBox(width: 85),
                    ClipOval(
                      child: Image(
                        image: AssetImage("assets/sk.jpg"),
                        width: 75,
                        height: 75,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                )),

            /////////////////////////////////////////
            SizedBox(height: 20),
            Container(
                width: 350,
                height: 75,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 194, 187, 166),
                    borderRadius: BorderRadius.circular(30
                        ),
                    border: Border.all(
                      width: 2.5,
                      color:  Color.fromARGB(215, 157, 91, 67),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Bijames",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                    ),
                    SizedBox(width: 70),
                    ClipOval(
                      child: Image(
                        image: AssetImage("assets/bi_1.jpg"),
                        width: 75,
                        height: 75,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                )),
            ////////////////////
            SizedBox(height: 20),
            Container(
                width: 350,
                height: 75,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 194, 187, 166),
                    borderRadius: BorderRadius.circular(30
                        ),
                    border: Border.all(
                      width: 2.5,
                      color: Color.fromARGB(215, 157, 91, 67),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Jackets",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                    ),
                    SizedBox(width: 70),
                    ClipOval(
                      child: Image(
                        image: AssetImage("assets/ja.jpg"),
                        width: 75,
                        height: 75,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}
