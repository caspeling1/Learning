import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  final String name;

  PersonPage(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(
        'Name: $name',
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Navigator.pop(context),
      //   tooltip: 'Go back',
      //   child: Icon(Icons.undo),
      // ),
    );
  }
}
