import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key, required this.label, this.type});

  final String label;
  final String? type;
  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {

  bool passwordState = true;
  String email = '';

  Widget? _buildSuffixIcon() {
    if (widget.type == 'password') {
      return TextButton(
        onPressed: () {
          setState(() {
            passwordState = !passwordState;
          });
        },
        child: Icon(
          passwordState ? Icons.visibility : Icons.visibility_off, 
          color: const Color.fromARGB(255, 85, 56, 92),
        ),
      );
    } else if (widget.type == 'email') {
      // check if email is valid and if email lenght is greater than 0
      if (email.contains('@') && email.contains('.')) {
        return Transform.translate(
          offset: const Offset(-10, 0),
          child: const Icon(Icons.check, color: Color.fromARGB(255, 85, 56, 92))
        );
      } else if (email.isNotEmpty) {
        return Transform.translate(
          offset: const Offset(-10, 0),
          child: const Icon(Icons.close, color: Color.fromARGB(255, 85, 56, 92))
        );
      } else {
        return null;
      }
      
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        floatingLabelStyle: const TextStyle(
          color: Color.fromARGB(255, 63, 63, 63),
          fontSize: 15,
          fontWeight: FontWeight.w100
        ),
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 85, 56, 92),
          fontSize: 15,
          fontWeight: FontWeight.w100
        ),
        labelText: widget.label,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 85, 56, 92))
        ),
        suffixIcon: _buildSuffixIcon(),
      ),
      onChanged: (value) {
        if (widget.type == 'email') {
          setState(() {
            email = value;
          });
        }
      },
      obscureText: widget.type == 'password' ? passwordState : false,
    );
  }
}