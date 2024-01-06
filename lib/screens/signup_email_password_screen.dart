import 'package:firebase_auth_demo/services/firebase_auth_methods.dart';
import 'package:firebase_auth_demo/shared/theme.dart';
import 'package:firebase_auth_demo/widgets/custom_textfield.dart';
import 'package:firebase_auth_demo/widgets/inputText.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmailPasswordSignup extends StatefulWidget {
  static String routeName = '/signup-email-password';
  const EmailPasswordSignup({Key? key}) : super(key: key);

  @override
  _EmailPasswordSignupState createState() => _EmailPasswordSignupState();
}

class _EmailPasswordSignupState extends State<EmailPasswordSignup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUpUser() async {
    context.read<FirebaseAuthMethods>().signUpWithEmail(
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
        child: Container(
          height: tinggi,
          width: lebar,
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
            child: Column(
              children: [
                Text(
                  "Hello! Register to get started",
                  style: TextStyle(fontSize: 33),
                ),
                SizedBox(
                  height: 50,
                ),
                InputText(hintText: "Username"),
                SizedBox(
                  height: 20,
                ),
                InputText(hintText: "Email"),
                SizedBox(
                  height: 20,
                ),
                InputText(hintText: "Phone Number"),
                SizedBox(
                  height: 20,
                ),
                InputText(hintText: "Password"),
                SizedBox(
                  height: 20,
                ),
                InputText(hintText: "Confirm password"),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginPage');
                  },
                  child: Text(
                    "Register",
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
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alredy have an account? "),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/LoginPage');
                      },
                      child: Text(
                        "Login Now!",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
