import 'package:flutter/material.dart';

class MyLogo extends StatefulWidget {
  const MyLogo({super.key, this.size});

  final double? size;

  @override
  State<MyLogo> createState() => _MyLogoState();
}

class _MyLogoState extends State<MyLogo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 80,
            child: Image(image: AssetImage('assets/LOGO.png'),)
          ),
          Transform.translate(
            offset: const Offset(0, -10),
            child: Text('PARKING GO', style: TextStyle(
              fontSize: widget.size ?? 35,
              fontWeight: FontWeight.w900,
              color: Colors.white
            )),
          ),
        ],
      )
    );
  }
}