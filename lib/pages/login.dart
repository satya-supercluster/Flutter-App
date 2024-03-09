
import 'package:flutter/material.dart';
import 'package:meuseum_guide/pages/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController=TextEditingController();
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: usernameController,
                      autofocus: false,
                      style: TextStyle(
                        fontSize: 22.0, 
                        color: Colors.black87,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person,size: 30,),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Username',
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      controller: passwordController,
                      cursorOpacityAnimates: false,
                      autofocus: false,
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 22.0, 
                        color: Colors.black87,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon( Icons.password, size:30),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Password',
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                      ),
                    ),
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.grey[900]),
                        ),
                      ],
                    ),
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
                          onPressed: () {},
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
}
 
                        