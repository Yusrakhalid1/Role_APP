import 'package:project/components/consonants.dart';
import 'package:project/viewmodel/signup_viewmodel.dart';
import 'package:project/views/login_screen.dart';
import 'package:project/views/HomePage_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class signup_screen extends StatelessWidget {
  const signup_screen({super.key});

  @override
  Widget build(BuildContext context) {

     signup() async{
try{
  final Credential =await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email:emailtextController.text,
     password: passwordtextController.text);
   Navigator.pushReplacement(
          context,
           MaterialPageRoute(builder: (context) => HomePage_view())
          );

}on FirebaseAuthException catch(e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
}
catch (e) {
  print(e);
}
}
  
    return ViewModelBuilder<SignupViewModel>.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => SignupViewModel(),
      builder: (context, viewModel, child) => Scaffold(
      body : SingleChildScrollView(
         child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget> [
             const SizedBox(height: 30,),
              const Text(
                  "Signup",
                  textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.white,
                 fontSize: 25,
                 fontWeight: FontWeight.w800
                ), 
                ),
                 const Divider(),
                  const SizedBox(height: 40,),
                  const Text(
                     "Enter Email"
                          ),
                  const Divider(),
                   TextField(
                        obscureText: false,
                        controller: emailtextController,
                      decoration:const InputDecoration(
                           border : OutlineInputBorder(),
                      labelText: 'Enter username , phone or Email',
                        prefixIcon: Icon(
                          Icons.lock ,
                           color: Colors.black,
                           ),
                        fillColor: Colors.grey,
                        filled: true,
                      ),
                      ),
                      const Divider(),
                       const SizedBox(height: 40,),
                        const Text(
                          "Password"
                          ),
                       const Divider(),
                       TextField(
                        obscureText: true,
                        controller: passwordtextController,
                      decoration:const InputDecoration(
                           border : OutlineInputBorder(),
                        hintText: 'Enter password',
                        prefixIcon: Icon(
                          Icons.lock ,
                          color: Colors.black,
                          ),
                        fillColor: Colors.grey,
                        filled: true,
                     ),      
                      ),
                     const SizedBox(height: 40,),
                      const Divider(),
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
                            signup();
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
      )
    );
  }
}