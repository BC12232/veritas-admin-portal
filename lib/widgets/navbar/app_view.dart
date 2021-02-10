//Container of the whole app (has navbar + dynamic content)
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation_bar.dart';

class AppView extends StatelessWidget {
  final Widget child;

  const AppView({@required this.child});

  @override
  Widget build(BuildContext context) {
    //print("thing");  <---- only fires when you resize screen, not when navbar option clicked

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [NavigationBar(), Expanded(child: child)],
      ),
    );
  }
}
