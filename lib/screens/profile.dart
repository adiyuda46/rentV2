import 'package:flutter/material.dart';

class ProfilePageV2 extends StatelessWidget {
  static String routeName = '/profil';
  const ProfilePageV2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('Profil',style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
           Center(
            child: Container(
              width: 120,
              height: 120,
              child: Image.asset(
                'assets/profile.png'
              )
            ),
           ),
           SizedBox(height: 30,),
           Text('Account Details', style: TextStyle(fontSize: 20)),
           SizedBox(height: 9,),
           Text('Nama Kamu', style: TextStyle(fontSize: 14)),
           Text('Mella Amanda', style: TextStyle(fontSize: 16)),
           SizedBox(height: 9,),
           Text('Email', style: TextStyle(fontSize: 14)),
           Text('Ayam.terbang@gmail.com',style: TextStyle(fontSize: 16)),
           SizedBox(height: 9,),
           Text('Nomer Handphone', style: TextStyle(fontSize: 14)),
           Text('085712394921', style: TextStyle(fontSize: 16)),
           SizedBox(height: 9,),
           Text('Password', style: TextStyle(fontSize: 14)),
           Text('****************', style: TextStyle(fontSize: 16)),
      
          ],
        ),
      ),
    );
  }
}