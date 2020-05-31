import 'package:flutter/material.dart';
import 'package:simple_fitness_app/components/video_card.dart';
import 'package:simple_fitness_app/models/video.dart';
import 'package:simple_fitness_app/screens/video_screen.dart';

class VideosCarousel extends StatelessWidget {
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
                'Top Video Tutorials',
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
          height: 280.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: videos.length,
            itemBuilder: (BuildContext build, int index) {
              Video video = videos[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => VideoScreen(video: video),
                  ),
                ),
                child: VideoCard(video),
              );
            },
          ),
        ),
      ],
    );
  }
}
