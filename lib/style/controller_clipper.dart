import 'package:flutter/material.dart';

class ControllerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var paint = Paint();
    paint.style = PaintingStyle.fill;

    path.moveTo(30.0, 50.0);
    path.quadraticBezierTo(0.0, 60.0, 0.0, 100.0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.quadraticBezierTo(size.width + 100, -40.0, 30.0, 50.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
