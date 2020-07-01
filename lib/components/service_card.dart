import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_service/utilities/constants.dart';

class ServiceCard extends StatelessWidget {
  final icon;
  final label;

  const ServiceCard({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Card(
        shape: kShape,
        child: Container(
          width: 100,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FaIcon(icon),
              SizedBox(
                height: 10,
              ),
              Text(
                label,
                style: TextStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
