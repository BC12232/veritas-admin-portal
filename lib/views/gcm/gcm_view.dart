import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/widgets/navbar/navigation_bar.dart';

class GCMView extends StatelessWidget {
  const GCMView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NavigationBar(1),
      Center(
        child: Container(
          child: Text(
            'Global Content Manager',
            style: TextStyle(fontSize: 30),
          ),
        ),
      )
    ]);
  }
}
