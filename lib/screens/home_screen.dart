import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_fitness_app/components/popular_sets_carousel.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color secondaryColor = Color(0xff8b82d0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.gripLines,
                      color: secondaryColor,
                    ),
                    Container(
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
              padding: EdgeInsets.only(left: 25.0, right: 120.0,top: 10.0),
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
