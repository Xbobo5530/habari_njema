import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:habari_njema/models/scripture.dart';
import 'package:habari_njema/values/stirngs.dart';
import 'package:http/http.dart' as http;

const tag = 'DailyScriptureView';

Future<Scripture> fetchScripture() async {
  final response = await http.get(randomBibleVerseUrl);

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    return Scripture.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load scripture');
  }
}

class DailyScriptureSectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Scripture>(
      future: fetchScripture(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          Scripture scripture = snapshot.data;

          return _buildScriptureView(scripture);
        } else if (snapshot.hasError) {
          print(snapshot.error);
          return new Container();
        } else {
          print('$tag has some other error');
          return new Container();
        }
      },
    );
  }

  Widget _buildScriptureView(Scripture scripture) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Card(
        color: Colors.teal,
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              scripture.text,
              textAlign: TextAlign.center,
              style: new TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
          subtitle: Text(
            '${scripture.bookName} ${scripture.chapter}: ${scripture.verse}',
            textAlign: TextAlign.right,
            style:
                new TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
