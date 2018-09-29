import 'package:flutter/material.dart';
import 'package:habari_njema/models/comment.dart';

class ViewCommentsPage extends StatelessWidget {
  final List<Comment> comments;

  ViewCommentsPage({this.comments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        size: 40.0,
                      ),
                      title: Text(comments[index].comment),
                      subtitle: Text(comments[index].username),
                    );
                  }),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(labelText: 'Leave a comment'),
                    )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
