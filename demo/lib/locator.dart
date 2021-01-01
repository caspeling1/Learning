import 'package:demo/data/viewmodels/user_model.dart';
import 'package:get_it/get_it.dart';

// Global variable so it's easily accessible anywhere.
GetIt locator = GetIt.I;

// Must register any objects you want to locate/fetch
void setupLocator() {
  locator.registerFactory(() => UserModel());
}
