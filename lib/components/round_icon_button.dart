import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {this.icon, this.action, this.size, this.color, this.elevation});
  final IconData icon;
  final Function action;
  final double size;
  final Color color;
  final double elevation;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: elevation ?? 0,
      constraints: BoxConstraints.tightFor(
        width: size.toDouble(),
        height: size.toDouble(),
      ),
      shape: CircleBorder(),
      fillColor: color ?? Colors.transparent,
      splashColor: Colors.white,
      onPressed: () {
        action();
      },
    );
  }
}
