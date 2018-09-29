import 'package:flutter/material.dart';
import 'package:habari_njema/pages/home.dart';
import 'package:habari_njema/values/stirngs.dart';

void main() => runApp(new HabariNjema());

class HabariNjema extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: APP_NAME,
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new MyHomePage(title: APP_NAME),
    );
  }
}
