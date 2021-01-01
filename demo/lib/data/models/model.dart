import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable(nullable: false)
class Event {
  final num id;
  final DateTime created; // should be generating unix in JSON
  final String summary;
  final String description;
  final DateTime start; // should be generating unix in JSON
  final DateTime end; // should be generating unix in JSON
  final List<User> attendees;

/** Add const to constructor if you want the values to never change */
  Event({
    @required this.id,
    @required this.created,
    @required this.summary,
    @required this.description,
    @required this.start,
    @required this.end,
    @required this.attendees,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
  Map<String, dynamic> toJson() => _$EventToJson(this);
}

@JsonSerializable(nullable: false)
class User {
  final int id;
  final String email;
  final String displayName;
  String responseStatus;
  String comment;

  /** Constructor with named and optional params */
  User({
    @required this.id,
    this.email,
    this.displayName,
    this.responseStatus,
    this.comment,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({this.userId, this.id, this.title, this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}
