import 'package:flutter/material.dart';

class Input_Box extends StatelessWidget {
  TextEditingController controller;
  String hint_text = "";
  bool obscure_text = false;

  Input_Box({
    Key? key,
    required this.controller,
    required this.hint_text,
    required this.obscure_text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: TextField(
        controller: controller,
        obscureText: obscure_text,
        decoration: InputDecoration(
          hintText: hint_text,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
        ),
      ),
    );
  }
}
