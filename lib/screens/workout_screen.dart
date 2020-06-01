import 'package:flutter/material.dart';
import 'package:simple_fitness_app/models/workout.dart';
import 'package:intl/intl.dart';

class WorkoutScreen extends StatefulWidget {
  final Workout workout;
  String now = new DateFormat.yMMMMd('en_US').format(new DateTime.now());

  WorkoutScreen({this.workout});

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).primaryColor,
                        // size: 30.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    Text('Date1'),
                    Text('Date2'),
                    Text('Date3'),
                    Text('CurrDate'),
                    Text('Date5'),
                    Text('Date6'),
                    Text('Date7'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
