import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final bool obscureText;

  const TextInput({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return  TextField(
              controller: controller,
              autofocus: false,
              obscureText: obscureText,
              style: TextStyle(
                fontSize: 22.0, 
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person,size: 30,),
                filled: true,
                fillColor: Colors.white,
                hintText: hintText,
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
              );
  }
}