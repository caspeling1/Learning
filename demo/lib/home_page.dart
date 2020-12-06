import 'package:flutter/material.dart';

import 'nav/routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ElevatedButton(
        child: Text('Go to Person page'),
        onPressed: () {
          print(Routes.person.route + '/John Doe');
          Navigator.pushNamed(
            context,
            Routes.person.route + '/John Doe',
          );
        },
      ),
    );
  }
}
