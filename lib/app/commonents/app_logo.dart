import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double size;
  final Color color;

  AppLogo({
    this.size = 32,
    this.color = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "http://online.sccnn.com/img2/5890/llq160510-01.png",
      width: size,
      color:color,
    );
  }
}
