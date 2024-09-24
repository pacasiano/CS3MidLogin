import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({super.key});

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
            child: const Text('PARKING GO', style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
              color: Colors.white
            )),
          ),
        ],
      )
    );
  }
}