import 'package:flutter/material.dart';

class MyIcon extends StatefulWidget {
  const MyIcon({super.key, required this.icon, required this.color});

  final IconData icon;
  final Color color;

  @override
  State<MyIcon> createState() => _MyIconState();
}

class _MyIconState extends State<MyIcon> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 50,
      child: IconButton.filled(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(widget.color),
          elevation: const WidgetStatePropertyAll<double>(4.0),
          shadowColor: WidgetStatePropertyAll<Color>(widget.color),
        ),
        onPressed: (){},
        icon: Icon(widget.icon,
        size: 15,
        color: const Color.fromARGB(255, 255, 255, 255),
        )
      )
    );
  }
}