import '../models/model.dart';

final DUMMY_EVENTS = [
  Event(
      id: 1,
      created: DateTime.fromMillisecondsSinceEpoch(1606831000 * 1000),
      summary: '',
      description: '',
      start: DateTime.fromMillisecondsSinceEpoch(
          1606831200 * 1000), // unix for 01-Dec-2020 14:00:00 UTC
      end: DateTime.fromMillisecondsSinceEpoch(
          1606838400 * 1000), // unix for 01-Dec-2020 16:00:00 UTC
      attendees: [
        User(id: 1),
        User(id: 2),
      ])
];
