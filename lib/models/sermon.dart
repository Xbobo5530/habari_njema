import 'package:habari_njema/models/comment.dart';

class Sermon {
  String title, description, imageUrl, teacher, teacherImageUrl;
  DateTime date;
  List<Comment> comments;
  List<String> references;

  Sermon(
      {this.title,
      this.description,
      this.imageUrl,
      this.teacher,
      this.teacherImageUrl,
      this.date,
      this.comments,
      this.references});
}
