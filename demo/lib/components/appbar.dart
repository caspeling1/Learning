import 'package:flutter/material.dart';

/** Easy way to separate out reusable parts of a widget is via a funtion or
 * can make a class with a collection of methods for reusable bits.
 */

/** Reusable Basic Appbar which will only show title, no interactions. */
AppBar getAppBar({String title}) {
  return AppBar(
    title: Text(title),
  );
}
