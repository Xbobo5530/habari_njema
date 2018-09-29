import 'package:flutter/material.dart';
import 'package:habari_njema/models/events.dart';

class ViewEventPage extends StatelessWidget {
  final Event event;

  ViewEventPage({this.event});

  @override
  Widget build(BuildContext context) {
    var imageSection = Image.network(event.imageUrl);
    var descriptionSection = Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
          leading: Icon(Icons.description), title: Text(event.description)),
    );
    var venueSection = ListTile(
      leading: Icon(Icons.location_on),
      title: Text(event.venue),
    );
    var timeSection = ListTile(
      leading: Icon(Icons.watch_later),
      title: Text('${event.date.year}-${event.date.month}-${event.date.day}'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(event.title),
      ),
      body: ListView(
        children: <Widget>[
          imageSection,
          descriptionSection,
          venueSection,
          timeSection,
        ],
      ),
    );
  }
}
