import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/globals/helper_functions.dart';

final double RADIUS = 80.0;

class ProfileImage extends StatelessWidget {
  final String _assetPath;

  //TODO: dynamically pass this on receive from backend
  ProfileImage(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(context) * NAVBAR_PADDING_RATIO),
        child: Container(
          width: RADIUS,
          height: RADIUS,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: new AssetImage(
                    'assets/images/logo.png'), //NetworkImage('https://googleflutter.com/sample_image.jpg'),
                fit: BoxFit.fill),
          ),
        ));
  }
}
