import 'package:flutter/material.dart';

class MyDrawerIcon extends StatefulWidget {
  const MyDrawerIcon({super.key, required this.text, required this.route});

  final String text;
  final String route;

  @override
  State<MyDrawerIcon> createState() => _MyDrawerIconState();
}

class _MyDrawerIconState extends State<MyDrawerIcon> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, widget.route);
        },
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll<Color>(Color.fromARGB(255, 235, 235, 235)),
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(10)),
          shape: WidgetStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
        ),
        child: Text(widget.text, style: const TextStyle(
          color: Color.fromARGB(255, 46, 46, 46),
        )),
      ),
    );
  }
}