import 'package:flash_chat_flutter/screens/chat_screen.dart';
import 'package:flash_chat_flutter/screens/login_screen.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flash_chat_flutter/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlue,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);
const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here',
  border: InputBorder.none,
);
const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

final Map<String, Widget Function(BuildContext)> routes = {
  WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
  LoginScreen.id: (BuildContext context) => LoginScreen(),
  RegistrationScreen.id: (BuildContext context) => RegistrationScreen(),
  ChatScreen.id: (BuildContext context) => ChatScreen(),
};
