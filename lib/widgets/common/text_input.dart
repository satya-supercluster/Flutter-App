import 'package:flutter/material.dart';

class MyInputField extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final Key? fieldKey;
  final bool? isPasswordField;

  const MyInputField({
    super.key,
    this.controller,
    required this.hintText,
    this.fieldKey,
    this.isPasswordField
  });

  @override
  State<MyInputField> createState() => _MyInputFieldState();
}

class _MyInputFieldState extends State<MyInputField> {
  @override
  Widget build(BuildContext context) {
    bool _obscureText=widget.isPasswordField==true;
    return  new TextFormField(
      obscureText: _obscureText,
      controller: widget.controller,
      autofocus: false,
      style: TextStyle(
        fontSize: 22.0, 
        color: Colors.black87,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintText,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14.0, vertical: 1.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.7),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.7),
        ),
        // suffixIcon: new GestureDetector(
        //     onTap: () {
        //       setState(() {
        //         _obscureText = !_obscureText;
        //       });
        //     },
        //     child:AbsorbPointer(
        //       child: (widget.isPasswordField==true)? Icon(_obscureText ? Icons.visibility_off : Icons.visibility, color: _obscureText == false ? Colors.blue : Colors.grey,) : Text(""),  
        //     )
        //   ),
      ),
      
    );
  }
}