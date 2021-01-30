import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String _assetPath;

  //TODO: dynamically pass this in
  ProfileImage(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: new AssetImage(
                'assets/images/logo.png'), //NetworkImage('https://googleflutter.com/sample_image.jpg'),
            fit: BoxFit.fill),
      ),
    );
  }
}
