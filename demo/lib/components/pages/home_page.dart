import 'package:demo/components/appbar.dart';
import 'package:demo/data/data.dart';
import 'package:demo/data/models/model.dart';
import 'package:demo/data/viewmodels/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'base_view.dart';

class HomePage extends StatelessWidget {
  final Future<User> users = fetchUser(Client());

  @override
  Widget build(BuildContext context) {
    return BaseView<UserModel>(
      builder: (context, model, child) => Scaffold(
        appBar: getAppBar(title: 'Home'),
        body: null,
      ),
    );
  }
}
