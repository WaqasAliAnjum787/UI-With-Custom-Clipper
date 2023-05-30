import 'package:flutter/material.dart';

class MainContainerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path();
    path.moveTo(0, height * 0.15);
    //rounding the top left corner
    path.quadraticBezierTo(0, 0, width * 0.1, 0);
    path.lineTo(width * 0.9, 0);
    //rounding the top right corner
    path.quadraticBezierTo(width, 0, width, height * 0.2);
    //doing to round the right bottom corner
    path.lineTo(width, height * 0.60);
    path.quadraticBezierTo(width, height * 0.7, width * 0.9, height * 0.74);
    //doing to round the left bottom corner
    path.lineTo(width * 0.1, height);
    path.quadraticBezierTo(width * 0, height, 0, height * 0.9);
    path.lineTo(0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
