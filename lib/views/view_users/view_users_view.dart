import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewUsersView extends StatelessWidget {
  const ViewUsersView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'View Users',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
