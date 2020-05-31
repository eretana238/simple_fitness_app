import 'package:flutter/cupertino.dart';

class Video {
  String imageUrl;
  String name;
  int views;

  Video({this.imageUrl, this.name, this.views});
}

List<Video> videos = [
  Video(imageUrl: 'assets/images/yoga1.jpg', name: 'Yoga', views: 102930),
  Video(imageUrl: 'assets/images/cardio.jpg', name: 'Cardio', views: 89390),
  Video(imageUrl: 'assets/images/biking.jpg', name: 'Biking', views: 55903),
];