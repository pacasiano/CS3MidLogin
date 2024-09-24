import 'package:cs3midlogin/ui/drawericon.dart';
import 'package:cs3midlogin/ui/logo.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 95,67,195),
      child: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 95,67,195),
            ),
            padding: const EdgeInsets.all(10),
            height: 150,
            child: const MyLogo()
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyDrawerIcon(text: 'Home', route: '/home'),
                SizedBox(height: 10),
                MyDrawerIcon(text: 'Login', route: '/login'),
                SizedBox(height: 10),
                MyDrawerIcon(text: 'Sign Up', route: '/signup'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}