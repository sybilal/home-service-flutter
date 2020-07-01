import 'package:flutter/material.dart';
import 'package:home_service/components/freelancer_card.dart';
import 'package:home_service/components/service_card.dart';
import 'package:home_service/components/custom_background.dart';
import 'package:home_service/utilities/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_service/components/bottom_navy_bar/bottom_navy_bar.dart';
import 'package:home_service/components/bottom_navy_bar/BottomNavyBarItem.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Stack(
        children: <Widget>[
          CustomBackground(),
          Scaffold(
            backgroundColor: Color(0xFFFFFF),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              actions: <Widget>[
                Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                )
              ],
              title: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  Text(
                    '9Bc layout',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            body: SafeArea(
              child: ListView(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(15.0),
                    elevation: 5,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          prefixIcon: Icon(FontAwesomeIcons.search),
                          hintText: 'Search'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 170,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/cleaning.jpg',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'We clean like',
                          style: TextStyle(
                            color: kPrimaryBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Never',
                              style: TextStyle(
                                color: kPrimaryBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Been Dirty',
                              style: TextStyle(
                                color: Color(0xffe2345d),
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          color: Color(0xff040f48),
                          shape: kShape,
                          onPressed: () {},
                          child: const Text(
                            'Book now',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Home Service',
                        style: kCategoryTextStyle,
                      ),
                      Text(
                        'see more',
                        style: kCategoryTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ServiceCard(
                            icon: FontAwesomeIcons.carSide, label: 'Car Wash'),
                        ServiceCard(
                            icon: FontAwesomeIcons.wrench, label: 'Repair'),
                        ServiceCard(
                            icon: FontAwesomeIcons.broom, label: 'Clean'),
                        ServiceCard(
                            icon: FontAwesomeIcons.moon, label: 'Astronomy'),
                        ServiceCard(
                            icon: FontAwesomeIcons.gamepad, label: 'Gaming'),
                        ServiceCard(
                            icon: FontAwesomeIcons.houseUser, label: 'Housing'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Top rated providers',
                        style: kCategoryTextStyle,
                      ),
                      Text(
                        'see more',
                        style: kCategoryTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FreelancerCard(
                    color: Colors.amber[300],
                    name: 'Jane Doe',
                    image: AssetImage(
                      'assets/consultant.jpg',
                    ),
                    description: 'Investment Consultant',
                    rating: 5.0,
                    comments: 15,
                  ),
                  FreelancerCard(
                    color: Color(0xffb8c1ff),
                    name: 'Sherlock Holmes',
                    image: AssetImage(
                      'assets/sherlock.jpg',
                    ),
                    description: 'Consulting Detective',
                    rating: 5.0,
                    comments: 15,
                  ),
                  FreelancerCard(
                    color: Color(0xffffb8fa),
                    name: 'Dasha Taraan',
                    image: AssetImage(
                      'assets/taraan.jpg',
                    ),
                    description: 'Model',
                    rating: 5.0,
                    comments: 15,
                  ),
                  FreelancerCard(
                    color: Colors.blueGrey[100],
                    name: 'Joker',
                    image: AssetImage(
                      'assets/joker.jpg',
                    ),
                    description: 'Joker',
                    rating: 5.0,
                    comments: 15,
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavyBar(
              selectedIndex: _selectedIndex,
              showElevation: true,
              itemCornerRadius: 8,
              curve: Curves.easeInOut,
              onItemSelected: (index) => setState(() {
                _selectedIndex = index;
              }),
              items: [
                BottomNavyBarItem(
                  icon: Icon(FontAwesomeIcons.home),
                  title: Text('Home'),
                ),
                BottomNavyBarItem(
                  icon: Icon(FontAwesomeIcons.copy),
                  title: Text(
                    'Messages test for mes teset test test ',
                  ),
                ),
                BottomNavyBarItem(
                  icon: Icon(FontAwesomeIcons.user),
                  title: Text('User'),
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
