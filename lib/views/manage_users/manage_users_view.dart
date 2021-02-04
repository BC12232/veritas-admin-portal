import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageUsersView extends StatelessWidget {
  const ManageUsersView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Manage Users',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
