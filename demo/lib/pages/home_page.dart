import 'package:demo/data/data.dart';
import 'package:demo/data/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../nav/routes.dart';

class HomePage extends StatelessWidget {
  final Future<User> futureUser = fetchUser(Client());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: FutureBuilder<User>(
        future: futureUser,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: <Widget>[
                Card(
                  child: ListTile(
                    title: Text(snapshot.data.name),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.person.route,
                        arguments: snapshot.data,
                      );
                    },
                  ),
                ),
              ],
            );

            // Text(snapshot.data.name);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
