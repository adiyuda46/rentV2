import 'dart:async';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  static String routeName = '/splash';
   SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    //TODO: implement initState
    Timer(Duration(seconds: 3), (){ 
      Navigator.pushReplacementNamed(context, '/signup-email-password');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 277,
              height: 277,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(
                  'assets/logo_alxs.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
