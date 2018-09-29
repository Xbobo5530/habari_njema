import 'package:flutter/material.dart';
import 'package:habari_njema/mock_data/mock_ministries.dart';
import 'package:habari_njema/models/ministry.dart';
import 'package:habari_njema/pages/view_ministry.dart';

class MinistriesSectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ministries.length,
        itemBuilder: (BuildContext context, int index) {
          Ministry ministry = ministries[index];

          return Card(
              child: InkWell(
            child: Wrap(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.network(
                      ministry.imageUrl,
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
                              child: Text(
                                ministry.title,
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
            onTap: () => _openMinistry(context, ministry),
          ));
        },
      ),
    );
  }

  _openMinistry(BuildContext context, ministry) {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new ViewMinistryPage(ministry),
            fullscreenDialog: true));
  }
}
