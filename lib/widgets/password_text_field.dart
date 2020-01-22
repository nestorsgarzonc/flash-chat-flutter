import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final onChangedValue;
  PasswordTextField({@required this.onChangedValue});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChangedValue,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(color: Colors.black),
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter your password',
      ),
    );
  }
}
