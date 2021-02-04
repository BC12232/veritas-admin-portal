import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageUniversityView extends StatelessWidget {
  const ManageUniversityView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Manage University',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
