import 'package:flutter/material.dart';
import 'package:simple_fitness_app/screens/workout_screen.dart';
import '../models/workout.dart';

class PopularSetsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Popular Sets',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 22.0,
                ),
              ),
              GestureDetector(
                onTap: () => print('pressed see all'),
                child: Text(
                  'See all',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontFamily: 'Lato',
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: workouts.length,
            itemBuilder: (BuildContext build, int index) {
              Workout workout = workouts[index];
              return Container(
                width: 210.0,
                margin: EdgeInsets.all(10.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 190,
                      height: 120,
                      color: Colors.blue,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
