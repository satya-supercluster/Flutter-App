
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meuseum_guide/pages/signup.dart';
import 'package:meuseum_guide/services/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:meuseum_guide/widgets/common/text_input.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple,
      body:SafeArea(
        child: Column(
          children: [
            SizedBox(height:50),
            Row(
              children: [
                SizedBox(width: 25,),
                Text("Login",style: TextStyle(fontSize: 50,color: Colors.white),),
              ],
            ),
            Row(
              children: [
                SizedBox(width:25),
                Text("Welcome Back!",style: TextStyle(fontSize: 18,color:Colors.white),),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child:Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyInputField(hintText: "Email",controller: emailController,),
                    SizedBox(height: 20,),
                    MyInputField(hintText: "Passwoird",controller: passwordController,isPasswordField: true,),
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.grey[900]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        ElevatedButton(
                          child: Text('LogIn',style: TextStyle(color: Colors.white,
                          fontSize: 22),),
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(97, 6, 35, 151),
                            foregroundColor: Colors.lightBlueAccent,
                            shadowColor: Colors.black,
                          ),
                          onPressed: () {
                            _login();
                          },
                        ),
                      ],
                    ),
                    SizedBox(height:30),
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
                              'Or continue with',
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
                    SizedBox(height:30),
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
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a member?',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 4),
                        InkWell(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage())),
                          child: const Text(
                            'Sign Up now',
                            style: TextStyle(
                              color: Color.fromARGB(255, 5, 55, 105),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ) 
                  ],
                ),
              )
            )
          ],
        )
      )
    );
  }
  void _login()async{
    String email=emailController.text;
    String password=passwordController.text;

    User? user =await _auth.signInWithEmailAndPassword(email, password);
    if(user!=null){
      print("User created");
    }
    else{
      print("Some error happend");
    }


  }
}
 
                        