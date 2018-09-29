import 'package:flutter/material.dart';
import 'package:habari_njema/mock_data/mock_sermons.dart';
import 'package:habari_njema/models/sermon.dart';
import 'package:habari_njema/pages/view_sermon.dart';

class SermonsSectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sermons.length,
        itemBuilder: (BuildContext context, int index) {
          Sermon sermon = sermons[index];

          return Card(
              child: InkWell(
            onTap: () => _openSermon(context, sermon),
            child: Wrap(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.network(
                      sermon.imageUrl,
                      width: 200.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: Container(
                              width: 150.0,
                              height: 10.0,
                              child: Text(
                                sermon.title,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ));
        },
      ),
    );
  }

  _openSermon(BuildContext context, Sermon sermon) {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new ViewSermonPage(sermon: sermon),
            fullscreenDialog: true));
  }
}
