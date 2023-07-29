import 'package:flutter/material.dart';
import 'package:iti_flutter_project/homelayout.dart';
import 'package:iti_flutter_project/teams.dart';
import 'package:iti_flutter_project/welcom.dart';

class Info_App extends StatelessWidget {
  const Info_App({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 194, 187, 166),
        appBar: AppBar(
          leading:IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left,color: Color.fromARGB(180, 89, 99, 76),
            ),),
          backgroundColor: Color.fromARGB(255, 194, 187, 166),
        //title:Text('Application Information'),centerTitle: true,
        elevation: 0,
      ),
        endDrawer:
        Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children:  <Widget>[
              const SizedBox(
                height: 100,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 194, 187, 166),
                  ),
                  child: Text('Menu drawer',
                    style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(215, 157, 91, 67),),
                  ),
                ),
              ),
              ListTile(
                  title: const Text('Home',
                    style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(215, 157, 91, 67),),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> const homelayout(email: '', email1: '', fullname: '', username: ''),
                    ));
                  },
                  leading: const Icon(
                    Icons.home,
                    size: 50,
                    color:Color.fromARGB(180, 89, 99, 76),

                  )
              ),
              ListTile(
                  title: const Text('About Us',
                    style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(215, 157, 91, 67),),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> const Team_name()),);
                  },
                  leading: const Icon(
                    Icons.person,
                    size: 50,
                    color:Color.fromARGB(180, 89, 99, 76),

                  )
              ),
              ListTile(
                  title: const Text('Log out',
                    style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(215, 157, 91, 67),),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> const first_page()),);
                  },
                  leading: const Icon(
                    Icons.logout,
                    size: 50,
                    color:Color.fromARGB(180, 89, 99, 76),

                  )
              ),
            ],
          ),
        ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30.0), //add border radius
                      border: Border.all(
                        width: 3,color: Color.fromARGB(215, 157, 91, 67),
                      ),
                        boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 1,
                        )
                        ]
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0), //add border radius
                        child: Image(
                          image:AssetImage("assets/s_2.jpg"),fit: BoxFit.fill,
                          ),
                      )
            ),
          ),
          SizedBox(height: 55),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
               height: 250,
               decoration: BoxDecoration(
                   color: Color.fromARGB(255, 194, 187, 166),
                      borderRadius: BorderRadius.circular(30),
                   //     border: Border.all(
                   //   width: 3,color: Color.fromARGB(215, 157, 91, 67),
                   // ),
                   //      boxShadow: [
                   //      BoxShadow(
                   //        blurRadius: 5,
                   //        spreadRadius: 1,
                   //      )
                   //      ]
                      ),
                      child:
                       SingleChildScrollView(
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                           child: Column(
                             children: [
                               Text("We offer you an application that saves your time ,effort and money  This app (Fashion) It will facilitate our lives in the buying and selling process \n Where it offers you the ease of buying unique clothes In this application \n we will provide you with all kinds of clothes In a simple  understandable and uncomplicated presentation \n"
"and presentation that allows all people to shop through this application easily"
"We hope that you will like this application and that it will facilitate the shopping process for you and save your time, effort and money",
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                      ),
                             ],
                           ),
                         ),
                       ),
            ),
          )

          
        ],
      )
    );
  }
}