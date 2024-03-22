import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meuseum_guide/pages/appointments.dart';
import 'package:meuseum_guide/pages/signup_clinic.dart';
import 'package:meuseum_guide/pages/signup.dart';
import 'package:meuseum_guide/services/firebase_options/firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
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
      home: SignUpClinic(),
    );
  }
}
