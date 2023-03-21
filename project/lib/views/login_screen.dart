import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/components/consonants.dart';
import 'package:project/viewmodel/loginscreen_viewmodel.dart';
import 'package:project/views/login_pin_view.dart';
import 'package:project/views/signup_view.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class Login_screen extends StatelessWidget {
  const Login_screen({super.key});

  @override
  Widget build(BuildContext context) {
   
   signin()async{
    try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailtextController.text,
    password: passwordtextController.text

  );
    Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>  PasswordView()));
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
  }

    return ViewModelBuilder<LoginViewModel>.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(       
              child: Column(   
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget> [
                 const SizedBox(height: 30,),
                  const Text(
                      "Login",
                    style: TextStyle(
                    color: Colors.white,
                     fontSize: 25,
                     fontWeight: FontWeight.w800
                    ), 
                    ),
                      const SizedBox(height: 40,),
                      const Text(
                         "Username/Email"
                              ),
                      const SizedBox(height: 20,),
                       TextField(
                            obscureText: false,
                           controller: emailtextController,
                          decoration:const  InputDecoration(
                             border : OutlineInputBorder(),
                          labelText: 'Enter Email',
                            prefixIcon: Icon(
                              Icons.lock ,
                               color: Colors.grey,
                               ),
                            fillColor: Colors.grey,
                            filled: true,
                          ),
                          ),
                            const SizedBox(height: 40,),
                            const Text(
                              "Password"
                              ),
                              const SizedBox(height: 20,),
                           TextField(
                            obscureText: true,
                           controller: passwordtextController,
                          decoration: const InputDecoration(
                               border : OutlineInputBorder(),
                            hintText: 'Enter Password',
                            prefixIcon: Icon(
                              Icons.lock ,
                              color: Colors.grey,
                              ),
                            fillColor: Colors.grey,
                            filled: true,
                         ),      
                          ),
                          Divider(),
                          const Text("forgotten password?", style: TextStyle(color: Colors.white ),),
                         const SizedBox(height: 40,),
                          Container(
                            width: 500,
                            child: RawMaterialButton(
                              fillColor:  Colors.blue,
                              elevation: 1.0,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                              ),
                              onPressed: (){
                                // Navigator.push(context , MaterialPageRoute(builder:(context)=> PasswordView()));
                                 signin();
                              },
                              child : const Text(
                                "Sign In" , 
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0
                                ),
                              ) ,                      
                            ),
                          ),
                           const SizedBox(height: 40,),
                      Container(
                        width: 500,
                        child: RawMaterialButton(
                          fillColor: Colors.blue,
                          elevation: 1.0,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)
                          ),
                          onPressed: (){
                             Navigator.push(
                              context ,
                              MaterialPageRoute(builder:(context)=> signup_screen())
                             );
                          },
                          child : const Text(
                            "Sign Up" , 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                            ),
                          ) ,                      
                        ),
                      ),
                ]
              ),
          ),
        ),
      ),
      ),
    );
  }
}