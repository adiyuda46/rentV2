import 'package:firebase_auth_demo/services/firebase_auth_methods.dart';
import 'package:firebase_auth_demo/shared/theme.dart';
import 'package:firebase_auth_demo/widgets/custom_textfield.dart';
import 'package:firebase_auth_demo/widgets/inputText.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmailPasswordLogin extends StatefulWidget {
  static String routeName = '/login-email-password';
  const EmailPasswordLogin({Key? key}) : super(key: key);

  @override
  _EmailPasswordLoginState createState() => _EmailPasswordLoginState();
}

class _EmailPasswordLoginState extends State<EmailPasswordLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginUser() {
    context.read<FirebaseAuthMethods>().loginWithEmail(
          email: emailController.text,
          password: passwordController.text,
          context: context,
        );
  }

  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(22, 70, 22, 22),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          child: Column(
            children: [
              Text(
                "Welcome Back! Glad to see you, Again!",
                style: TextStyle(fontSize: 33),
              ),
              SizedBox(
                height: 50,
              ),
              InputText(hintText: "Enter Your Email"),
              SizedBox(
                height: 20,
              ),
              InputText(hintText: "Enter Your Password"),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ForgetPass');
                  },
                  child: Text("Forget Password?"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/MyBottomNavigationBar');
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: PrimerBlackColor,
                  fixedSize: Size(316, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: tinggi * 0.3,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account yet? "),
                  InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/signup-email-password');
                },
                child: Text(
                  "Register Now!",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
