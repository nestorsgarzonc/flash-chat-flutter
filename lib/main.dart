import 'package:flash_chat_flutter/screens/chat_screen.dart';
import 'package:flash_chat_flutter/screens/login_screen.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flash_chat_flutter/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      title: 'Material App',
      initialRoute: 'welcome_screen',
      routes: {
        'welcomeScreen': (BuildContext context) => WelcomeScreen(),
        'login_screen': (BuildContext context) => LoginScreen(),
        'register_screen': (BuildContext context) => RegistrationScreen(),
        'chat_screen': (BuildContext context) => ChatScreen(),
      },
    );
  }
}
