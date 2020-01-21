import 'package:flash_chat_flutter/constants.dart';
import 'package:flutter/material.dart';

class HeroLogo extends StatelessWidget {
  final double imageHeight;
  HeroLogo({@required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return Hero(
      child: Container(height: imageHeight, child: Image.asset(imageLogo)),
      tag: 'logo',
    );
  }
}
