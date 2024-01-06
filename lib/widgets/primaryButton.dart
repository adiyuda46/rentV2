import 'package:firebase_auth_demo/shared/theme.dart';
import 'package:flutter/material.dart';


class PrimaryButton extends StatelessWidget {
  final String button;
  final String route;
  
  const PrimaryButton({Key? key, required this.button, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: PrimerBlackColor,
        fixedSize: Size(316, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), 
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, route, arguments: button);
      },
      child: Text(button, style: TextStyle(color: Colors.white)),
    );
  }
}