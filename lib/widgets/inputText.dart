import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
    final String hintText;
  const InputText({super.key, required this.hintText});
  

  @override
  
  Widget build(BuildContext context) {
  
    return  TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}