import 'dart:convert';

import 'package:demo/data/dummy_data/users.dart';
import 'package:demo/data/models/model.dart';

import 'base_model.dart';
import 'viewstate.dart';

class UserModel extends BaseModel {
  List<User> users;

  /** Use http.client to fetch data, rather than the static http.get() method,
 * which is difficult to mock.
 */
  Future<User> fetchUser() async {
    setState(ViewState.Busy);
    users = await User.fromJson(jsonDecode(DUMMY_USERS.toString()))
        as List<dynamic>;
    setState(ViewState.Idle);
  }
}
