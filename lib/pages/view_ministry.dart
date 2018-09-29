import 'package:flutter/material.dart';
import 'package:habari_njema/models/ministry.dart';
import 'package:habari_njema/views/contact_actions.dart';

class ViewMinistryPage extends StatelessWidget {
  final Ministry ministry;

  ViewMinistryPage(this.ministry);

  @override
  Widget build(BuildContext context) {
    var imageSection = Image.network(ministry.imageUrl);
    var descriptionSection = Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
          leading: Icon(Icons.description), title: Text(ministry.description)),
    );
    var contactSection = ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(ministry.contactDetails[0].imageUrl),
        ),
        title: Text(ministry.contactDetails[0].name),
        subtitle: new ContactActionsView(contact: ministry.contactDetails[0]));

    return Scaffold(
      appBar: AppBar(
        title: Text(ministry.title),
      ),
      body: ListView(
        children: <Widget>[
          imageSection,
          descriptionSection,
          contactSection,
        ],
      ),
    );
  }
}
