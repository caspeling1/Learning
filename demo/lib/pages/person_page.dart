import 'package:demo/data/data.dart';
import 'package:demo/data/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PersonPage extends StatelessWidget {
  final User user;

  PersonPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('\'s Todos:'), // short or text falls off screen
      ),
      body: FutureBuilder<List<Todo>>(
        future: fetchUserTodos(user.id, Client()),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  var item = snapshot.data[index];
                  return Card(
                    child: ListTile(
                      title: Text(item.title),
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Go back',
        child: Icon(Icons.undo),
      ),
    );
  }
}
