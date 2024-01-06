import 'package:flutter/material.dart';

class Comment {
  String authorName;
  String authorLastName;
  String text;
  String date;
  Comment(this.authorName, this.authorLastName, this.text, this.date);
}

class Reactions {
  String thumbsUp;
  String oks;
  String hearts;
  Reactions(this.thumbsUp, this.oks, this.hearts);
}

class UserData {
  String name;
  String lastName;
  List<Comment> comments;
  Reactions reactions;
  UserData(this.name, this.lastName, this.comments, this.reactions);

  void displayUserData() {
    print("Name: $name");
    print("Last Name: $lastName");

    if (comments.isNotEmpty) {
      print("Comments:");
      for (var comment in comments) {
        print("${comment.authorName} ${comment.authorLastName}: ${comment.text} (${comment.date})");
      }
    }

    if (reactions != null) {
      num resultReactions = (int.tryParse(reactions.thumbsUp)?? 0) +
          (int.tryParse(reactions.oks) ?? 0) +
          (int.tryParse(reactions.hearts) ?? 0);
      print("Reactions: $resultReactions");
    }
  }
}

void main() {
  String name = "Vasya";
  String lastName = "Ivanov";
  List<Comment> comments = [
    Comment("Vika", "Ivanova", "Супер!", "2023-01-01"),
    Comment("Alice", "Ivanova", "Супер!", "2023-01-01"),
  ];
  Reactions reactions = Reactions("10", "5", "2");
  UserData userData = UserData(name, lastName, comments, reactions);
  userData.displayUserData();
}

