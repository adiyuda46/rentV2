import 'package:firebase_auth_demo/screens/cart.dart';
import 'package:firebase_auth_demo/screens/home.dart';
import 'package:firebase_auth_demo/screens/profile.dart';
import 'package:flutter/material.dart';
// import 'package:rent/ui/page/cart.dart';
// import 'package:rent/ui/page/payment.dart';
// import 'package:rent/ui/page/profile.dart';

// import '../page/home.dart';

class MyBottomNavigationBar extends StatefulWidget {
  static String routeName = '/MyBottomNavigationBar';

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    Cart(),
    ProfilePageV2(),
    // PaymentPage()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        // Mengembalikan false untuk mencegah tombol kembali dari bekerja
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}