import 'package:flutter/material.dart';

class Team_name extends StatelessWidget {
  const Team_name({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 187, 166),

    appBar: AppBar(
      leading:
      IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.keyboard_arrow_left,color: Color.fromARGB(180, 89, 99, 76),
          
        
        ),),
      backgroundColor: Color.fromARGB(255, 194, 187, 166),
        elevation: 0,
        title:Text(''),
      ),
      
        body: Center(
          child: Column(
              children:[
              SizedBox(height: 70),
              
                 Container(
                  width: double.infinity,
                  height: 30,
                  child: Center(child: Text("Team members :-",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color:Color.fromARGB(215, 157, 91, 67) ),)),
                ),
              SizedBox(height: 20),
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 450,
                  height: 450,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 25),
                    Text(" * Tamer Mohamed Elmanzlawy",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Color.fromARGB(180, 89, 99, 76) ),),
                    Text(" * Eman Mohamed Atta",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color:Color.fromARGB(215, 157, 91, 67) ),),
                    Text(" * Sahar EBrahim ELmenshawy",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color:Color.fromARGB(180, 89, 99, 76) ),),
                    Text(" * Nora Nabil Mostafa",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color:Color.fromARGB(215, 157, 91, 67) ),),
                    Text(" * Nor Elhoda wagdy Hassona",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color:Color.fromARGB(180, 89, 99, 76) ),),
                    SizedBox(height: 25),
                  ],
                ),
                ),
              ),
            ]
            ),
        ),
    );
  }
}
