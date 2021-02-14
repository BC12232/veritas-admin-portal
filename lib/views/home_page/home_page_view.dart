import 'package:flutter/material.dart';
import 'package:veritas_admin/widgets/homepage/homepage.dart';
import 'package:veritas_admin/widgets/navbar/profile_image.dart';
import '../../routes/routes.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: Column(
        children: <Widget>[
          HomePage(),
        ],
      ),
    ));
  }
}
