import 'package:flutter/material.dart';

const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;

const String FontNameDefault = 'Nunito';

//Define each of your styles in its own little const block

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300, //100 to 900 (this comes from pubspec.yaml)
  fontSize: MediumTextSize,
  color: Colors.white,
);

const TitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w700, //100 to 900 (this comes from pubspec.yaml)
  fontSize: 40,
  color: Colors.black,
);

const Body1TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300, //100 to 900 (this comes from pubspec.yaml)
  fontSize: BodyTextSize,
  color: Colors.black,
);
