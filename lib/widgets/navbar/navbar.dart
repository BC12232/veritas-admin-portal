import 'package:flutter/material.dart';
import 'profile_image.dart';

//from first item to end of profile pic
const double HZ_PADDING = 100;
const double V_PADDING = 0;
const LIGHT_GREY = Color(0xfff4f4f4); //aRGB

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: LIGHT_GREY,
      padding: const EdgeInsets.fromLTRB(
          HZ_PADDING, V_PADDING, HZ_PADDING, V_PADDING),
      height: 130,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

          //MENU ITEMS + PROF IMAGE
          children: <Widget>[
            _NavBarItem('Manage University'),
            _NavBarItem('Manage Admin'),
            _NavBarItem('Global C.M.'),
            _NavBarItem('View Users'),
            _NavBarItem('View Pairings'),
            _NavBarItem('Financial Summary'),
            ProfileImage('dummy')
          ]),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
