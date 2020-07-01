import 'package:flutter/material.dart';
import 'package:home_service/components/ring.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          Ring(
            backgroundColor: Colors.white,
            ringColor: Color(0xfffef4f7),
            radius: 200,
            top: 140,
            left: 150,
            ringThickness: 100,
          ),
          Ring(
            backgroundColor: Colors.white,
            ringColor: Color(0xfff4f3ff),
            radius: 200,
            top: -120,
            left: -150,
            ringThickness: 100,
          ),

          // myScaffold(_selectedIndex, _onItemTapped),
        ],
      ),
    );
  }
}
