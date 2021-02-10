import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/widgets/navbar/navigation_bar.dart';

class ManageUniversityView extends StatelessWidget {
  const ManageUniversityView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SHOW_NAVBAR = true;
    return Center(
      child: Container(
          child: Column(
        children: [
          //NavigationBar(),
          Text(
            'Manage University',
            style: TextStyle(fontSize: 30),
          ),
        ],
      )),
    );
  }
}
