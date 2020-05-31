import 'package:flutter/material.dart';
import 'package:simple_fitness_app/screens/workout_screen.dart';
import '../models/workout.dart';
import '../components/workout_card.dart';

class PopularSetsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 10.0),
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
          height: 210.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: workouts.length,
            itemBuilder: (BuildContext build, int index) {
              Workout workout = workouts[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => WorkoutScreen(workout: workout),
                  ),
                ),
                child: WorkoutCard(workout),
              );
            },
          ),
        ),
      ],
    );
  }
}
