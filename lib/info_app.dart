import 'package:flutter/material.dart';

class Info_App extends StatelessWidget {
  const Info_App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(159, 219, 211, 188),
        appBar: AppBar(
          leading:IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left
            ),),
        backgroundColor: Color.fromARGB(159, 219, 211, 188),
        //title:Text('Application Information'),centerTitle: true,
        elevation: 0,
      ),
      body:Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 3,color: Color.fromARGB(159, 219, 211, 188)),
                      boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                      ]  
                    ),
                    child: Image(
                      image:AssetImage("assets/s_2.jpg"),fit: BoxFit.fill,
                      )
                      ),

                      SizedBox(height: 55),
          Container(
            width: 3500,
            height: 300,
             decoration: BoxDecoration(
                    color: Color.fromARGB(159, 219, 211, 188),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,color: Color.fromARGB(159, 219, 211, 188)),
                      boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                      ]  
                    ),
                    child:
                     SingleChildScrollView(
                       child: Column(
                         children: [
                           Text("We offer you an application that saves your time ,effort and money  This app (Fashion) It will facilitate our lives in the buying and selling process \n Where it offers you the ease of buying unique clothes In this application \n we will provide you with all kinds of clothes In a simple  understandable and uncomplicated presentation \n"
"and presentation that allows all people to shop through this application easily"
"We hope that you will like this application and that it will facilitate the shopping process for you and save your time, effort and money",
                            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),
                    ),
                         ],
                       ),
                     ),
          )

          
        ],
      )
    );
  }
}