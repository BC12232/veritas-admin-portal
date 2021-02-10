import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/globals/helper_functions.dart';
import 'package:veritas_admin/models/profile_info.dart';

final double RADIUS = 80.0;

class ProfileImage extends StatelessWidget {
  //True if it's in the nav bar. White background.
  // False if on the home screen & without the nav bar. Grey instead of white.
  final bool _isInNav;

  //TODO: dynamically pass this on receive from backend
  ProfileImage(this._isInNav);

  @override
  Widget build(BuildContext context) {
    //For the upper-right image
    final String letterFirstName = ProfileInfo.getFirstLetter();

    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(context) * NAVBAR_PADDING_RATIO),
        child: Container(
          width: RADIUS,
          height: RADIUS,
          child: Center(
              child: Text(letterFirstName,
                  style: TextStyle(
                      color: _isInNav
                          ? PROFILE_CIRCLE_TEXT_COLOR
                          : ALT_PROFILE_CIRCLE_TEXT_COLOR,
                      fontSize: 35))),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _isInNav ? PROFILE_CIRCLE_COLOR : ALT_PROFILE_CIRCLE_COLOR
              /*image: DecorationImage(
                image: new AssetImage(
                    'assets/images/logo.png'), //NetworkImage('https://googleflutter.com/sample_image.jpg'),
                fit: BoxFit.fill),*/
              ),
        ));
  }
}
