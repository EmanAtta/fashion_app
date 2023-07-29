import 'package:flutter/material.dart';
import 'package:iti_flutter_project/homelayout.dart';
import 'package:iti_flutter_project/sign_up.dart';
import 'package:iti_flutter_project/widgets/buttons.dart';
// import 'package:iti_flutter_project/widgets/text_field_email.dart';
// import 'package:iti_flutter_project/widgets/text_field_pass.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
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
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                    ),
                  ),
                  SizedBox(height: 20),
                   Padding(
                    padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                        controller: emailController,

                        decoration:
                        InputDecoration(labelText:"  Email",
                          labelStyle:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                          fillColor:Colors.white,

                          focusedBorder: OutlineInputBorder( 
                            borderSide: const BorderSide(color: Color.fromARGB(180, 89, 99, 76),width: 2),
                        
                             borderRadius: BorderRadius.circular(22.0)),
                        ),
                        validator: (value){
                          if (value!.contains("@gmail.com")){
                            return null;
                          }
                          else{
                            return "Try again, not valid!";
                          }
                        }
                    ),
                  ),
                  
                   Padding(
                    padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                        controller: passwordController,
                        obscureText: _obscureText ,
                        decoration: InputDecoration(suffixIcon: IconButton(
                          icon: _obscureText
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                          labelText:"  Password",
                          labelStyle:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color.fromARGB(215, 157, 91, 67)),
                          focusedBorder: OutlineInputBorder( 
                            borderSide:const BorderSide(color: Color.fromARGB(180, 89, 99, 76),width: 2),
                             borderRadius: BorderRadius.circular(22.0)),
                        ),
                        validator: (value){
                          if (value!.length>7){
                            return null;
                          }
                          else{
                            return "In correct Password!";
                          }
                        }
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      if(_formKey.currentState!.validate()){
                        saveEmail(emailController.text);
                        bool log_result = await signinUsingFirebase(emailController.text, passwordController.text);
                        if (log_result==true) {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                homelayout(email: emailController.text,fullname: "",username: "",email1: "",)),);
                        }
                        else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("log in failed")));
                        }
                      };
                      },
                      
                      
                    child: const Buttons(button_text: "Login",),
                  ),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Don't have acount?",style: TextStyle(color: Color.fromARGB(215, 157, 91, 67)),),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sign_up()),
                            );
                          },
                          
                          child: const Text(
                            "sign up",
                            style: TextStyle(color: Color.fromARGB(180, 89, 99, 76),fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
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
  Future<bool> signinUsingFirebase(String email, String password) async {
    bool result =false;
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      final user = userCredential.user;

      if (user != null){
        print(user?.uid);
        result =true;
        // return result;
      }
      return result;
    } catch(e){
      return result;
    }
  }
  saveEmail(String email) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("email", email);
}
}
