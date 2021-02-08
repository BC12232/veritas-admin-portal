import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewPairingsView extends StatelessWidget {
  const ViewPairingsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text(
            'View Pairings',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
