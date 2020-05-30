import 'package:flutter/material.dart';
import 'package:simple_fitness_app/models/workout.dart';

class WorkoutScreen extends StatefulWidget {
  final Workout workout;

  WorkoutScreen({this.workout});

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('hello'),
    );
  }
}