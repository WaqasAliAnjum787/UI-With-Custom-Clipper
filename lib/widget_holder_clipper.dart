import 'package:flutter/material.dart';

class WidgetHolderClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();
    //curing the top left corner
    path.moveTo(0, height * 0.2);
    path.quadraticBezierTo(0, height * 0.1, width * 0.1, height * 0.08);
    //curing the top right corner
    path.lineTo(width * 0.87, 0);
    path.quadraticBezierTo(width, height * 0.02, width, height * 0.05);
    path.lineTo(width, height * 0.7);
    //curing the bottom right corner
    path.quadraticBezierTo(width, height * 0.76, width * 0.8, height * 0.81);
    path.lineTo(width * 0.2, height * 0.96);
    //curing the bottom left corner
    path.quadraticBezierTo(0, height, 0, height * 0.9);
    // path.quadraticBezierTo(0, height, 0, height * 0.95);
    //  path.cubicTo(width * 0.1, height, 0, height * 0.9, 0, height);
    // path.lineTo(0, height);
    // path.conicTo(0, height, 0, height * 0.9, 1);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
