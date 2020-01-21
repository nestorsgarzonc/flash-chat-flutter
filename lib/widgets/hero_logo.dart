import 'package:flash_chat_flutter/constants.dart';
import 'package:flutter/material.dart';

class HeroLogo extends StatelessWidget {
  const HeroLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      child: Container(height: 200.0, child: Image.asset(imageLogo)),
      tag: 'logo',
    );
  }
}
