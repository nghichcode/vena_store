import 'package:flutter/material.dart';

class CustomClipperImage extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    return Rect.fromLTRB(0, 0, 0, 0);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
