import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color primaryColor = Color(0x58484599);
  Color secondaryColor = Color.fromARGB(255, 85, 53, 145);
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
                    horizontal: 25.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.gripHorizontal,
                      color: Color(0x58484599),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () => print('pressed profile pic'),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            image: AssetImage('assets/images/me.jpg'),
                            height: 45.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'May 29, 2020',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    'Have a nice day, Esteban!',
                    style: TextStyle(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
