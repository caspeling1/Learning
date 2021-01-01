import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final int id;
  final String displayName;
  final String email;

  const UserItem(this.id, this.displayName, this.email);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(displayName),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).secondaryHeaderColor,
            Theme.of(context).accentColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
