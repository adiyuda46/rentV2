import 'package:flutter/material.dart';

class BannerPage extends StatelessWidget {
  final String imagePath;
  const BannerPage({super.key , required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 0, 11, 0),
      child: Container(
        height: tinggi * 0.2,
        width: lebar * 0.8,
        // color: Colors.black12,
        child: Card(
          // elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.black12,
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
