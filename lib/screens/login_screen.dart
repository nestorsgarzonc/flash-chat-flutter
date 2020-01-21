import 'package:flash_chat_flutter/widgets/botton_login.dart';
import 'package:flash_chat_flutter/widgets/email_text_field.dart';
import 'package:flash_chat_flutter/widgets/hero_logo.dart';
import 'package:flash_chat_flutter/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            HeroLogo(imageHeight: 250),
            SizedBox(height: 48.0),
            EmailTextField(onChangedValue: (value) {
              print(value);
            }),
            SizedBox(height: 8.0),
            PasswordTextField(onChangedValue: (value) {}),
            SizedBox(height: 24.0),
            BottonsLogin(
              function: () {},
              buttonText: 'Log in',
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
