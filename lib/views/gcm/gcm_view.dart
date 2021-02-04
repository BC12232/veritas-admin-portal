import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GCMView extends StatelessWidget {
  const GCMView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Global CM',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
