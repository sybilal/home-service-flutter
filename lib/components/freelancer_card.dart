import 'package:flutter/material.dart';
import 'package:home_service/components/round_icon_button.dart';
import 'package:home_service/utilities/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FreelancerCard extends StatelessWidget {
  final Color color;
  final String name;
  final String description;
  final double rating;
  final int comments;
  final ImageProvider<dynamic> image;

  const FreelancerCard({
    this.color,
    this.name,
    this.description,
    this.rating,
    this.comments,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: color,
      shape: kShape,
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: image,
                    height: 90.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    description,
                    style: kSmallDescStyle,
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.star,
                        color: kSmallDescColor,
                        size: 15,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(rating.toString(), style: kSmallDescStyle),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.comment,
                        color: kSmallDescColor,
                        size: 15,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(comments.toString(), style: kSmallDescStyle)
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    RoundIconButton(
                      icon: FontAwesomeIcons.heart,
                      size: 40,
                      color: Colors.transparent,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      color: Colors.white,
                      shape: kShape,
                      onPressed: () {},
                      child: const Text(
                        'Hire',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
