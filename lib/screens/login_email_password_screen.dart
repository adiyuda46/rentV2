import 'package:firebase_auth_demo/services/firebase_auth_methods.dart';
import 'package:firebase_auth_demo/shared/theme.dart';
import 'package:firebase_auth_demo/widgets/custom_textfield.dart';
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(22, 70, 22, 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(
                  "Welcome Back! Glad to see you, Again!",
                  style: TextStyle(fontSize: 33),
                ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: emailController,
                hintText: 'Enter Your Email',
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: passwordController,
                hintText: 'Enter Your Password',
              ),
            ),
             Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ForgetPass');
                  },
                  child: Text("Forget Password?"),
                ),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  //Navigator.pushReplacementNamed(context, '/MyBottomNavigationBar');
                  loginUser();
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
              const SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account yet? "),
                  InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/RegisterPage');
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
    );
  }
}