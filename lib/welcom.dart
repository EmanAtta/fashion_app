import 'package:flutter/material.dart';
import 'package:iti_flutter_project/log_in.dart';

class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(241, 239, 240, 215),
     
      
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.end,
           
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
          SizedBox(height: 5),
          Column(
            
            children: [
                Text('Let Your Style Speak',
                style: TextStyle(fontSize: 30,color: Color.fromARGB(215, 157, 91, 67)),),
                SizedBox(height: 10),
                Text('Discover the latest trends in women',style: TextStyle(fontSize: 18,color:Color.fromARGB(180, 89, 99, 76) ),),
                Text('fashion and exploer your personality',style: TextStyle(fontSize: 18,color: Color.fromARGB(180, 89, 99, 76)),)
            ],
            
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const LogIn()),);
                },
                child: Container(
                  
                  
                  width: 130,
                          height: 30,
                          decoration: BoxDecoration(
                      color: Color.fromARGB(215, 157, 91, 67),
                      borderRadius: BorderRadius.circular(5),
                          
                      border: Border.all(
                        width: 1,
                        color: Color.fromARGB(180, 89, 99, 76),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 1,
                        )
                      ]),
                      
                      child: Center(child: Text('Get started',style: TextStyle(fontSize: 15,color:Color.fromARGB(159, 219, 211, 188) ),)),
                      
                       
              
                ),
              ),
            ],
                    )
        
        ],
      ),
      
    );
  }
}

