import 'package:flash_chat_flutter/constants.dart';
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
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: kInputDecorationTheme,
      ),
      title: 'Material App',
      initialRoute: WelcomeScreen.id,
      routes: routes,
    );
  }
}
