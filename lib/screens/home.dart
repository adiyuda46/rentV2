import 'package:firebase_auth_demo/screens/categoryHome.dart';
import 'package:firebase_auth_demo/widgets/card.dart';
import 'package:firebase_auth_demo/widgets/notifButton.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(textEditingController: _textEditingController),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Column(
            children: [
              Container(
                height: tinggi * 0.2,
                width: lebar,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BannerPage(imagePath: 'assets/Gratis ongkir card.png'),
                    BannerPage(imagePath: 'assets/Gratis ongkir card.png'),
                    BannerPage(imagePath: 'assets/Gratis ongkir card.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: tinggi * 0.56,
                  width: lebar,
                  child: CategoryHome(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final TextEditingController textEditingController;

  const CustomAppBar({
    Key? key,
    this.height = kToolbarHeight,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 50,
              width: 250,
              child: TextField(
                controller: textEditingController,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.black12,
                  hintStyle: TextStyle(fontSize: 15),
                  hintText: "Find your product",
                ),
              ),
            ),
            SizedBox(width: 20),
            NotifButton(icon: Icons.notifications_none_rounded, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}