import 'package:flutter/material.dart';
import 'package:veritas_admin/routes/routes.dart';

//Navbar Styles
final TextStyle kPageTitleStyle =
    TextStyle(color: Colors.white, fontSize: 18.0); //Text
const NAVBAR_PADDING_RATIO = 0.02; //width (% context), of item img&text padding

//COLORS
const VERITAS_RED = Color(0xff952939);
const DARK_GREEN = Color(0xff309987);
const LIGHT_GREY = Color(0xfff4f4f4);
const LIGHT_PINK = Color(0xFFFEF4F4);
const BLACK_COLOR = Color(0xFF000000);

// pseudonyms... to make our code more intuitive/readable
const TOP_BAR_COLOR = DARK_GREEN; //aRGB
// color options for the profile circle in the upper-rt: both text & background
const PROFILE_CIRCLE_COLOR = Colors.white;
const PROFILE_CIRCLE_TEXT_COLOR = DARK_GREEN;
const ALT_PROFILE_CIRCLE_COLOR = LIGHT_GREY;
const ALT_PROFILE_CIRCLE_TEXT_COLOR = Colors.black;

//CONFIG
const String INITIAL_ROUTE = routeLoginPage; //Initial screen loaded.

//STATE
int PAGE_INDEX = 0;

//GCM Styles
final TextStyle kNavButtonTextStyle =
    TextStyle(color: BLACK_COLOR, fontSize: 20, fontWeight: FontWeight.w700);
final TextStyle kTitleTextStyle =
    TextStyle(color: BLACK_COLOR, fontSize: 30, fontWeight: FontWeight.w700);
final TextStyle kSmallButtonTextStyle =
    TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400);
