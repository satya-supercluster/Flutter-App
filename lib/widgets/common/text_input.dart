import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final String hint;
  const MyInputField({
    super.key,
    required this.hint
  });

  @override
  Widget build(BuildContext context) {
    return  TextField(
      autofocus: false,
      style: TextStyle(
        fontSize: 22.0, 
        color: Colors.black87,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14.0, vertical: 3.0),
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