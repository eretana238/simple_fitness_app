import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_fitness_app/components/popular_sets_carousel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color secondaryColor = Color(0xff9088b3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.gripLines,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {
                        print('pressed menu button');
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: GestureDetector(
                        onTap: () => print('pressed profile pic'),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            image: AssetImage('assets/images/me.jpg'),
                            height: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 120.0, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'May 29, 2020',
                    style: TextStyle(
                      color: secondaryColor,
                      fontFamily: 'Lato',
                    ),
                  ),
                  Text(
                    'Have a nice day, Esteban!',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      fontFamily: 'Lato',
                    ),
                  )
                ],
              ),
            ),
            PopularSetsCarousel(),
          ],
        ),
      ),
    );
  }
}
