import 'package:flutter/material.dart';
import 'package:simple_fitness_app/models/video.dart';


class VideoCard extends StatelessWidget {
  final Video video;

  VideoCard(this.video);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      margin: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              image: DecorationImage(
                image: AssetImage(video.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            height: 22.0,
            top: 15.0,
            left: 15.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white60,
              ),
              child: Center(
                child: Text(
                  '${video.name}',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    color: Theme.of(context).primaryColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            height: 22.0,
            bottom: 15.0,
            left: 15.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white60,
              ),
              child: Center(
                child: Text(
                  '${video.views} views',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    color: Theme.of(context).primaryColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
