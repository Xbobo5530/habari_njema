import 'package:flutter/material.dart';
import 'package:habari_njema/pages/info.dart';
import 'package:habari_njema/views/daily_scripture_section.dart';
import 'package:habari_njema/views/events_section.dart';
import 'package:habari_njema/views/ministries_section.dart';
import 'package:habari_njema/views/sermons_section.dart';
import 'package:habari_njema/views/videos_section.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.local_library),
        title: new Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.info),
              onPressed: () => Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new InfoPage(),
                      fullscreenDialog: true)))
        ],
      ),
      body: Container(
        child: new ListView(
          children: <Widget>[
            new DailyScriptureSectionView(),
            _buildSectionTitle('Upcoming events'),
            new EventsSectionView(),
            _buildSectionTitle('Sermons and teachings'),
            new SermonsSectionView(),
            _buildSectionTitle('Minisries'),
            new MinistriesSectionView(),
//            _buildSectionTitle('Latest videos'),
//            new VideosSectionView(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
          child: Text(
            title,
            style: new TextStyle(color: Colors.grey, fontSize: 16.0),
          ),
        ),
        new Divider(),
      ],
    );
  }
}
