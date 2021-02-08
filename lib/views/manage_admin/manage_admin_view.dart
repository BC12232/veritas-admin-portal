import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageAdminView extends StatelessWidget {
  const ManageAdminView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      //to avoid the yellow underline
      child: Center(
        child: Container(
          child: Text(
            'Manage Admin',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
