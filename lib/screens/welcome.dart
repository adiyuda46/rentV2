import 'package:firebase_auth_demo/services/firebase_auth_methods.dart';
import 'package:firebase_auth_demo/shared/theme.dart';
import 'package:firebase_auth_demo/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Welcome extends StatefulWidget {
  static String routeName = '/welcome';
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: tinggi,
            width: lebar,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Welcome.png'), fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: lebar,
                height: tinggi * 0.3,
                color: Colors.transparent,
                child: Column(
                  children: [
                    Text(
                      "TAKE YOUR ADVENTURE WITH US",
                      style: TextStyle(
                          color: PrimerBlackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                         Navigator.pushReplacementNamed(context, '/login-email-password');
                        //Navigator.pushNamed(context, '/login-email-password');
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
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushReplacementNamed(
                        //     context, '/signup-email-password');
                        Navigator.pushNamed(
                            context, '/signup-email-password');
                      },
                      child: Text(
                        "REGISTER",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PrimerWhiteColor,
                        fixedSize: Size(316, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
