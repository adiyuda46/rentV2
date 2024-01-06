import 'package:firebase_auth_demo/widgets/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordChange extends StatelessWidget {
  const PasswordChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Column(
        children: [
          SizedBox(height: 150,),
          Center(
            child: Container(
              width: 100, height: 100,
              child: Image.asset('assets/Succes mark.png')
            ),
          ),
          SizedBox(height: 30,),
          Text('Password Changed!', style: TextStyle(fontSize: 16),  
          ),
          SizedBox(height: 3,),
          Text('Your password has been changed successfully.',style:TextStyle(color: Colors.black)),
         SizedBox(height: 52,),
          PrimaryButton(button: 'Back to Login', route: '/homePage',),
        ],
      ),
    );
  }
}
