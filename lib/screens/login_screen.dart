import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat_flutter/screens/chat_screen.dart';
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
  final _auth = FirebaseAuth.instance;
  String password;
  String email;

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
              email = value;
            }),
            SizedBox(height: 8.0),
            PasswordTextField(onChangedValue: (value) {
              password = value;
            }),
            SizedBox(height: 24.0),
            BottonsLogin(
              function: () async {
                try {
                  final loggedUser = await _auth.signInWithEmailAndPassword(
                      email: email, password: password);
                  if (loggedUser != null) {
                    Navigator.pushNamed(context, ChatScreen.id);
                  }
                } catch (e) {
                  print(e);
                }
              },
              buttonText: 'Log in',
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
