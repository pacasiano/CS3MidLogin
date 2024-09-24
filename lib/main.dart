import 'package:cs3midlogin/screens/home.dart';
import 'package:cs3midlogin/screens/login.dart';
import 'package:cs3midlogin/screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: const MyLogin(),
      routes: {
        '/home': (context) => const MyHome(),
        '/signup': (context) => const MySignUp(),
        '/login': (context) => const MyLogin(),
      },
    );
  }
}
