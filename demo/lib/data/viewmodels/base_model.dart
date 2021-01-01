import 'package:demo/data/viewmodels/viewstate.dart';
import 'package:flutter/material.dart';

/** Boilerbplate: A base model that handles state change from data fetching to
 * data received.
 */

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
