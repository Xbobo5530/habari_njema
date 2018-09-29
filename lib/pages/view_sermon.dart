import 'package:flutter/material.dart';
import 'package:habari_njema/models/comment.dart';
import 'package:habari_njema/models/sermon.dart';
import 'package:habari_njema/pages/view_comments.dart';

class ViewSermonPage extends StatelessWidget {
  final Sermon sermon;

  ViewSermonPage({this.sermon});

  @override
  Widget build(BuildContext context) {
    var imageSection = Image.network(sermon.imageUrl);
    var descriptionSection = Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
          leading: Icon(Icons.description), title: Text(sermon.description)),
    );
    var contactSection = ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(sermon.teacherImageUrl),
      ),
      title: Text(sermon.teacher),
    );
    List<Comment> comments = sermon.comments;
//    var commentsSection = ListView.builder(
//        itemCount: comments.length,
//        itemBuilder: (context, index) {
//          return ListTile(
//            title: Text(comments[index].comment),
//            subtitle: Text(comments[index].username),
//          );
//        });

    var viewCommentsButton = RaisedButton(
      child: Text('View all comments (${comments.length})'),
      textColor: Colors.white,
      color: Colors.teal,
      onPressed: () => _openCommentsDialog(context, comments),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(sermon.title),
      ),
      body: ListView(
        children: <Widget>[
          imageSection,
          descriptionSection,
          contactSection,
          viewCommentsButton
        ],
      ),
    );
  }

  _openCommentsDialog(BuildContext context, List<Comment> comments) {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new ViewCommentsPage(comments: comments),
            fullscreenDialog: true));
  }
}
