import 'package:flutter/material.dart';

class categoryItem extends StatefulWidget {
  static String routeName = '/CategoryItem';
  final String id;
  final String title;
  final String images;

  const categoryItem(
      {super.key, required this.id, required this.title, required this.images});

  @override
  State<categoryItem> createState() => _categoryItemState();
}

class _categoryItemState extends State<categoryItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/ListItem',
            arguments: {"id": widget.id, "title": widget.title});
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            image:
                DecorationImage(image: NetworkImage(widget.images), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 133, 128, 128),
                blurRadius: 8,
                offset: Offset(0, 5),
              )
            ]),
        child: Container(
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.05, 0.5]),
          ),
        ),
      ),
    );
  }
}
