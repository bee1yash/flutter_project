import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool isObscure;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.isObscure = false, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            color: Colors.grey, 
            fontWeight: FontWeight.w500,
          ),
        ),
        TextField(
          obscureText: isObscure,
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              color: Colors.black, 
              fontWeight: FontWeight.bold,
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange),
            ),
          ),
        ),
      ],
    );
  }
}