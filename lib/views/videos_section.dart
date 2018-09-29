import 'package:flutter/material.dart';
import 'package:flutter_simple_video_player/flutter_simple_video_player.dart';

class VideosSectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlatButton(
      child: Text('play'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => VideoFullPage(
                    'https://youtu.be/gdigZ-Mx6Y8',
                  )),
        );
      },
    ));
  }
}
