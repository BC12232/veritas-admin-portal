//DICTATES WHAT'S LOADED ON SCREEN.
import 'package:flutter/material.dart';
import 'views/home/home_view.dart';

//GLOBALS HERE

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // <title> of the chrome tab
      title: 'Veritas Admin Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: HomeView(),
    );
  }
}
