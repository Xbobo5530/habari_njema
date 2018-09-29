import 'package:flutter/material.dart';
import 'package:habari_njema/models/contact.dart';

class ContactActionsView extends StatelessWidget {
  final Contact contact;

  ContactActionsView({this.contact});

  @override
  Widget build(BuildContext context) {
    var phoneSection = contact.phone != null
        ? IconButton(
            icon: Icon(
              Icons.phone,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        : new Container();
    var emailSection = contact.email != null
        ? IconButton(
            icon: Icon(
              Icons.email,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        : new Container();
    var twitterSection = contact.twitter != null
        ? FlatButton(
            child: Text('twitter'),
            onPressed: () {},
          )
        : new Container();
    var instagramSection = contact.twitter != null
        ? FlatButton(
            child: Text('instagram'),
            onPressed: () {},
          )
        : new Container();
    var facebookSection = contact.twitter != null
        ? FlatButton(
            child: Text('facebook'),
            onPressed: () {},
          )
        : new Container();
    return Container(
      height: 50.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          phoneSection,
          emailSection,
          twitterSection,
          instagramSection,
          facebookSection,
        ]),
      ),
    );
  }
}
