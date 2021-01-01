import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/model.dart';

/** Use http.client to fetch data, rather than the static http.get() method,
 * which is difficult to mock.
 */
Future<User> fetchUser(http.Client client) async {
  final response =
      await client.get('https://jsonplaceholder.typicode.com/users/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return User.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load users');
  }
}

Future<List<Todo>> fetchUserTodos(int id, http.Client client) async {
  final response = await client.get(
      'https://jsonplaceholder.typicode.com/users/' + id.toString() + '/todos');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // Returning a list https://stackoverflow.com/a/61120190
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<Todo>((json) => Todo.fromJson(json)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Todos');
  }
}
