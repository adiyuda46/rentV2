import 'package:flutter/material.dart';

class NotifButton extends StatefulWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;

  const NotifButton({
    Key? key,
    required this.icon,
    this.iconSize = 35,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<NotifButton> createState() => _NotifButtonState();
}

class _NotifButtonState extends State<NotifButton> {
  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    return Container(
      // height: tinggi * 0.1,
      // width: lebar * 0.1,
      child: IconButton(
        onPressed: widget.onPressed,
        icon: Icon(
          widget.icon,
          size: widget.iconSize,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}