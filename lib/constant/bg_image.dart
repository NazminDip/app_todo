import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/pro.png',
      color: Colors.white.withOpacity(0.15),
      fit: BoxFit.fill,
      colorBlendMode: BlendMode.color,
    );
  }
}
