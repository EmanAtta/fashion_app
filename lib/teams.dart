import 'package:flutter/material.dart';

class Team_name extends StatelessWidget {
  const Team_name({super.key});

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
        backgroundColor:Color.fromARGB(159, 219, 211, 188),
        elevation: 0,
        title:Text(''),
      ),
      
        body: Center(
          child: Column(
            children:[
              SizedBox(height: 30),
        
              Container(
                width: 450,
                height: 280,
                decoration: BoxDecoration(
              color: Color.fromARGB(255, 194, 187, 166),
              borderRadius: BorderRadius.circular(35
                  ),
              border: Border.all(
                width: 2,
                color:  Color.fromARGB(215, 157, 91, 67),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ]),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text("  * Tamer Mohamed Elmanzlawy",style: TextStyle(fontSize: 25,color: Color.fromARGB(180, 89, 99, 76) ),),
                  SizedBox(height: 7),
                  Text(" * Eman Mohamed Atta",style: TextStyle(fontSize: 25,color:Color.fromARGB(215, 157, 91, 67) ),),
                  SizedBox(height: 7),
                  Text(" * Sahar EBrahim ELmenshawy",style: TextStyle(fontSize: 25,color:Color.fromARGB(180, 89, 99, 76) ),),
                  SizedBox(height: 7),
                  Text(" * Nora Nabil Mostafa",style: TextStyle(fontSize: 25,color:Color.fromARGB(215, 157, 91, 67) ),),
                  SizedBox(height: 7),
                  Text(" * Nor Elhoda wagdy Hassona",style: TextStyle(fontSize: 25,color:Color.fromARGB(180, 89, 99, 76) ),),
                  
                  
                ],

                
              ),
              
              ),
             
            
            
               
            ]
            ),
        ),
    );
  }
}
