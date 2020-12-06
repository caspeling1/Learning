import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),

      /** Comes built in with a back button so technically no manually wired
       * button needed.
       */
      // body: ElevatedButton(
      //   child: Text('Back'),
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      // ),
    );
  }
}
