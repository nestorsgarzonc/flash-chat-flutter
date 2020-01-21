import 'package:flash_chat_flutter/widgets/botton_login.dart';
import 'package:flash_chat_flutter/widgets/email_text_field.dart';
import 'package:flash_chat_flutter/widgets/hero_logo.dart';
import 'package:flash_chat_flutter/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'register_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            HeroLogo(imageHeight: 250),
            SizedBox(height: 48.0),
            EmailTextField(onChangedValue: (value) {}),
            SizedBox(height: 8.0),
            PasswordTextField(onChangedValue: (value) {}),
            SizedBox(height: 24.0),
            BottonsLogin(
              function: () {},
              buttonText: 'Register',
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
