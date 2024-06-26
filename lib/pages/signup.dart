// import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:meuseum_guide/pages/login.dart';
import 'package:meuseum_guide/services/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:meuseum_guide/widgets/common/text_input.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController usernameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple,
      body:SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:Column(
            children: [
              SizedBox(height:30),
            Row(
              children: [
                SizedBox(width: 25,),
                Text("Sign Up",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                SizedBox(width:25),
                Text("Hey There!",style: TextStyle(fontSize: 18,color:Colors.white),),
              ],
            ),
            SizedBox(height: 20,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width:double.infinity,
                  height:double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Expanded(
                          flex: 1,
                          child: MyInputField(hintText: "First Name",controller: firstNameController,)
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex:1,
                          child: MyInputField(hintText: "Last Name",controller: lastNameController,)
                        ),
                      ],),
                      SizedBox(height:10),
                      MyInputField(hintText: "Email",controller:emailController,),
                      SizedBox(height:10),
                      MyInputField(hintText: "Set Username",controller: usernameController,),
                      SizedBox(height:10),
                      MyInputField(hintText: "Set Password",isPasswordField: true,controller: passwordController,),
                      SizedBox(height:10),
                      MyInputField(hintText: "Confirm Password",isPasswordField: true,controller: confirmPasswordController,),
                      SizedBox(height:10),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        ElevatedButton(
                          child: Text('Continue',style: TextStyle(color: Colors.white,
                          fontSize: 22),),
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(97, 6, 35, 151),
                            foregroundColor: Colors.lightBlueAccent,
                            shadowColor: Colors.black,
                          ),
                          onPressed: () {
                            _signUp();
                          },
                        ),
                        ],
                      ),
                      SizedBox(height:10),
                      Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Or SignUp with',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                      ),
                      SizedBox(height:10),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey[200],
                          ),
                          child: Image(
                            image: AssetImage("assets/images/google.png"),
                            height: 25,
                            width: 25,
                          )
                        ),
                      ],
                      ),
                      SizedBox(height:10),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already a member?',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 4),
                        InkWell(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage())),
                          child: const Text(
                            'LogIn now',
                            style: TextStyle(
                              color: Color.fromARGB(255, 5, 55, 105),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ) 
                    ],
                  )
                ),
              )
            ],
          )
        ) 
        ),
    );
  }
  void _signUp()async{
    String username=usernameController.text;
    String email=emailController.text;
    String firstName=firstNameController.text;
    String lastName=lastNameController.text;
    String password=passwordController.text;

    User? user =await _auth.signUpWithEmailAndPassword(email, password);
    if(user!=null){
      print("User created");
    }
    else{
      print("Some error happend");
    }


  }
}