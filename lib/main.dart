import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_demo/firebase_options.dart';
import 'package:firebase_auth_demo/screens/ForgetPassword.dart';
import 'package:firebase_auth_demo/screens/createNewPass.dart';
import 'package:firebase_auth_demo/screens/detailItem.dart';
import 'package:firebase_auth_demo/screens/home.dart';
import 'package:firebase_auth_demo/screens/home_screen.dart';
import 'package:firebase_auth_demo/screens/listItem.dart';
import 'package:firebase_auth_demo/screens/login_email_password_screen.dart';
import 'package:firebase_auth_demo/screens/login_screen.dart';
import 'package:firebase_auth_demo/screens/passwordChange.dart';
import 'package:firebase_auth_demo/screens/phone_screen.dart';
import 'package:firebase_auth_demo/screens/signup_email_password_screen.dart';
import 'package:firebase_auth_demo/screens/splash.dart';
import 'package:firebase_auth_demo/screens/welcome.dart';
import 'package:firebase_auth_demo/screens/buttomNavBar.dart';
import 'package:firebase_auth_demo/services/firebase_auth_methods.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthMethods>(
          create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<FirebaseAuthMethods>().authState,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Firebase Auth Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashPage(),
        routes: {
          SplashPage.routeName:(context) => SplashPage(),
          Welcome.routeName:(context) => const Welcome(),
          EmailPasswordSignup.routeName: (context) =>
              const EmailPasswordSignup(),
          EmailPasswordLogin.routeName: (context) => const EmailPasswordLogin(),
          PhoneScreen.routeName: (context) => const PhoneScreen(),
          MyBottomNavigationBar.routeName:(context) => MyBottomNavigationBar(),
          '/ListItem': (context) => ListItem(),
          '/DetailItem':(context) => DetailItem(),
          '/MyBottomNavigationBar' :(context) => MyBottomNavigationBar(),
          '/ForgetPass' :(context) => ForgetPass(),
          '/CreateNewPass':(context) => CreateNewPass(),
          '/PasswordChange':(context) => PasswordChange(),
          '/homePage' :(context) => Welcome()
        },
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return const HomeScreen();
    }
    return const LoginScreen();
  }
}
