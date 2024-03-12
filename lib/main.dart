import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meuseum_guide/pages/login.dart';
import 'package:meuseum_guide/pages/signup.dart';
import 'package:meuseum_guide/widgets/common/text_input.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBHlahC75pF5hoEfycceqUPoBTayxPQ4Ec", 
      appId: "1:185489267441:android:feec54376de8edf6e9e750",
      messagingSenderId: "185489267441", 
      projectId: "museum-guide0"
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meuseum Guide',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignUpPage(),
    );
  }
}
