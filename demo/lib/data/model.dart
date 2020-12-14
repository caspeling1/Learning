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
  final List<num> attendees;

  Event({
    this.id,
    this.created,
    this.summary,
    this.description,
    this.start,
    this.end,
    this.attendees,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
  Map<String, dynamic> toJson() => _$EventToJson(this);
}

class User {
  final String name;
  final int id;
  final String username;

  /** Constructor with named and optional params */
  User({this.name, this.id, this.username});

  /** Function that uses factory keyword to make singleton instance of class.
   * https://stackoverflow.com/questions/60133252/what-is-the-purpose-of-a-factory-method-in-flutter-dart
   * https://dart.dev/guides/language/language-tour#factory-constructors
   * 
   * Note: Factory constructors have no access to this.
   */
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      id: json['id'],
      username: json['username'],
    );
  }
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
