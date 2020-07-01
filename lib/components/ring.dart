import 'package:flutter/material.dart';

class Ring extends StatelessWidget {
  final backgroundColor;
  final ringColor;
  final top;
  final left;
  final right;
  final radius;
  final ringThickness;

  const Ring({
    this.backgroundColor,
    this.ringColor,
    this.top,
    this.left,
    this.right,
    this.radius,
    this.ringThickness,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top.toDouble(),
          left: left.toDouble(),
          child: CircleAvatar(
            radius: radius.toDouble(),
            backgroundColor: ringColor,
          ),
        ),
        Positioned(
          top: top + ringThickness.toDouble(),
          left: left + ringThickness.toDouble(),
          child: CircleAvatar(
            radius: radius - ringThickness.toDouble(),
            backgroundColor: Colors.white,
          ),
        )
      ],
    );
  }
}
