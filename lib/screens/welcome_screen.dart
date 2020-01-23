import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat_flutter/screens/login_screen.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flash_chat_flutter/widgets/botton_login.dart';
import 'package:flash_chat_flutter/widgets/hero_logo.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      upperBound: 1.0,
      vsync: this,
    );
    animation = ColorTween(
      begin: Colors.blueGrey,
      end: Colors.white,
    ).animate(controller);
    controller.forward();
    controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            logoApp(),
            SizedBox(height: 48.0),
            BottonsLogin(
              function: () => Navigator.pushNamed(context, LoginScreen.id),
              buttonText: 'Log In',
              color: Colors.lightBlueAccent,
            ),
            BottonsLogin(
              color: Colors.blueAccent,
              function: () =>
                  Navigator.pushNamed(context, RegistrationScreen.id),
              buttonText: 'Sign In',
            ),
          ],
        ),
      ),
    );
  }

  Row logoApp() {
    return Row(
      children: <Widget>[
        HeroLogo(
          imageHeight: 60,
        ),
        TypewriterAnimatedTextKit(
          speed: Duration(milliseconds: 200),
          totalRepeatCount: 1,
          text: ['Flash Chat'],
          textStyle: TextStyle(
            fontSize: 45.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
