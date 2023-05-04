import 'dart:ui';

import 'package:flutter/material.dart';

class Glassmorphism extends StatelessWidget {
  final double blur;
  final Widget child;

  const Glassmorphism({
    Key? key,
    required this.blur,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 10.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
            child: Container(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}