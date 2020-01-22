import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat_flutter/screens/chat_screen.dart';
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
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
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
                  final newUser = await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                  if (newUser != null) {
                    Navigator.pushNamed(context, ChatScreen.id);
                  }
                } catch (e) {
                  print(e);
                }
              },
              buttonText: 'Register',
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
