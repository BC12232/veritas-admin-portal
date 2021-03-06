//Container of the whole app (has navbar + dynamic content)
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/global_instances.dart';

import 'navigation_bar.dart';

class AppView extends StatelessWidget {
  final Widget child;

  const AppView({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [Expanded(child: child)],
      ),
    );
  }
}
