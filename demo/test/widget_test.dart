// use the WidgetTester utility that Flutter provides. send tap and scroll
// gestures. find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:demo/data/data.dart';
import 'package:demo/data/model.dart';
import 'package:demo/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  testWidgets('User loaded smoke test', (WidgetTester tester) async {
    // Mock up data fetching first
    final client = MockClient();
    when(client.get('https://jsonplaceholder.typicode.com/users/1'))
        .thenAnswer((_) async => http.Response('{"name": "Test"}', 200));

    // Build our app and load user.
    await tester.pumpWidget(MyApp());
    expect(await fetchUser(client), isA<User>());
  });
}
