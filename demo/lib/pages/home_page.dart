import 'package:demo/components/appbar.dart';
import 'package:demo/components/user.dart';
import 'package:demo/data/data.dart';
import 'package:demo/data/dummy_data/users.dart';
import 'package:demo/data/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatelessWidget {
  final Future<User> users = fetchUser(Client());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(title: 'Home'),
      body: FutureBuilder<User>(
        future: users,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              // change to using builder later
              children: DUMMY_USERS
                  .map((e) => Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: UserItem(e.id, e.displayName, e.email)))
                  .toList(),
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
