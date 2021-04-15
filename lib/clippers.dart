import 'package:flutter/material.dart';

class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.quadraticBezierTo(0, size.height * 0.6, 0, size.height * 0.8);
    path.cubicTo(size.width * 0.35, size.height, size.width * 0.6,
        size.height * 0.6, size.width, size.height * 0.8);
    path.quadraticBezierTo(size.width, size.height * 0.6, size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.quadraticBezierTo(0, size.height * 0.6, 0, size.height * 0.8);
    path.cubicTo(size.width * 0.56, size.height * 1.07, size.width * 0.7,
        size.height * 0.6, size.width, size.height * 0.8);
    path.quadraticBezierTo(size.width, size.height * 0.6, size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.96, size.width, size.height * 0.8);
    path.quadraticBezierTo(size.width, size.height * 0.6, size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
