import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/navbar/navbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[NavBar()],
      ),
    );
  }
}
