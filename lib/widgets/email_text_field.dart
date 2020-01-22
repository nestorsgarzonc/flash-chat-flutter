import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final onChangedValue;
  EmailTextField({@required this.onChangedValue});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChangedValue,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: 'Enter your email',
      ),
    );
  }
}
