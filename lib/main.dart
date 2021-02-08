//DICTATES WHAT'S LOADED ON SCREEN.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/routes/router_generator.dart';
import 'package:veritas_admin/routes/routes.dart';
import 'package:veritas_admin/views/gcm/gcm_feedback.dart';

import 'routes/routes.dart';
import 'widgets/navbar/app_view.dart';
import 'views/home_page/home_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Veritas Admin Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: HomePageView(), //TO START AT HOMEPAGE
      // builder: (_, child) => AppView(
      //   child: child,
      // ),
      //initialRoute: INITIAL_ROUTE,

      // initialRoute: routeHomePage,
      // navigatorKey: navKey, //allows navigation without context.
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

/*VERITAS CODE!!!!
import 'package:flutter/material.dart';
import '../../views/home/home_view.dart';

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
*/
