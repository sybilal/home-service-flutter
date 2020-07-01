import 'package:flutter/material.dart';
import 'package:home_service/utilities/constants.dart';

class BottomNavyBarItem {
  final Icon icon;
  final Text title;
  final Color activeColor;
  final Color activeBackgroundColor;
  final Color inactiveColor;
  final TextAlign textAlign;

  BottomNavyBarItem({
    @required this.icon,
    @required this.title,
    this.activeColor = Colors.white,
    this.activeBackgroundColor = kPrimaryBlue,
    this.inactiveColor = Colors.grey,
    this.textAlign = TextAlign.center,
  }) {
    assert(icon != null);
    assert(title != null);
  }
}
