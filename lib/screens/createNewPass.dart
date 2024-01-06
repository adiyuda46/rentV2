import 'package:firebase_auth_demo/shared/theme.dart';
import 'package:firebase_auth_demo/widgets/inputText.dart';
import 'package:firebase_auth_demo/widgets/primaryButton.dart';
import 'package:flutter/material.dart';

class CreateNewPass extends StatelessWidget {
  const CreateNewPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),),                                              
    body: Padding(
      padding: EdgeInsets.all(22),
      child: Column(
        children: [
          SizedBox(height: 60,),
          Text('Create New Password',style: TextStyle(fontSize: 30, fontWeight: bold),),
          SizedBox(height: 10,),
          Text('Your new password must be unique from those previously used.', style: TextStyle(color: Colors.black)),
        SizedBox(height: 35,),
        InputText(hintText: 'New Passwordd'),
        SizedBox(height: 10,),
        InputText(hintText: 'Confirm Password'),
        SizedBox(height: 30,),
        PrimaryButton(button: 'Reset Password', route: '/PasswordChange')
        ],
      ),
    )
    );
  }
}