class Workout {
  int time;
  int amountOfWorkouts;
  String name;
  String imageUrl;

  Workout({this.imageUrl, this.name, this.time, this.amountOfWorkouts});

}

List<Workout> workouts = [
  Workout(
    imageUrl: 'assets/images/workout.jpg',
    name: 'Bodyweight',
    time: 30,
    amountOfWorkouts: 10,
  ),
  Workout(
    imageUrl: 'assets/images/yoga0.jpg',
    name: 'Yoga',
    time: 15,
    amountOfWorkouts: 8,
  ),
  Workout(
    imageUrl: 'assets/images/weights.jpg',
    name: 'Weights',
    time: 45,
    amountOfWorkouts: 12,
  ),
  Workout(
    imageUrl: 'assets/images/stretch.jpg',
    name: 'Stretch',
    time: 15,
    amountOfWorkouts: 8,
  )
];