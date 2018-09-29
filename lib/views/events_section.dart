import 'package:flutter/material.dart';
import 'package:habari_njema/mock_data/mock_events.dart';
import 'package:habari_njema/models/events.dart';
import 'package:habari_njema/pages/view_event.dart';

class EventsSectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          events.sort((a, b) => a.date.compareTo(b.date));
          Event event = events[index];

          return Card(
              child: InkWell(
            child: Wrap(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.network(
                      event.imageUrl,
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
                                event.title,
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
            onTap: () => _openEvent(context, event),
          ));
        },
      ),
    );
  }

  _openEvent(BuildContext context, Event event) {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new ViewEventPage(
                  event: event,
                ),
            fullscreenDialog: true));
  }
}
