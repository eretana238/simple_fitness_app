import 'package:flutter/cupertino.dart';

class Video {
  String image;
  String name;

  Video({this.image, this.name});
}

List<Video> videos = [
  Video(image: 'assets/images/yoga1.jpg', name: 'Yoga'),
  Video(image: 'assets/images/cardio.jpg', name: 'Cardio'),
  Video(image: 'assets/images/stretch.jpg', name: 'Stretch')
];