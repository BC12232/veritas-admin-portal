import 'package:flutter/material.dart';
import 'package:veritas_admin/routes/routes.dart';

//Navbar Styles
final TextStyle kPageTitleStyle =
    TextStyle(color: Colors.white, fontSize: 18.0); //Text
final NAVBAR_PADDING_RATIO = 0.02; //width (% context), of item img&text padding

//COLORS
final VERITAS_RED = Color(0xff952939);
final DARK_GREEN = Color(0xff309987);
final LIGHT_GREY = Color(0xfff4f4f4);

// pseudonyms... to make our code more intuitive/readable
final TOP_BAR_COLOR = DARK_GREEN; //aRGB
// color options for the profile circle in the upper-rt: both text & background
final PROFILE_CIRCLE_COLOR = Colors.white;
final PROFILE_CIRCLE_TEXT_COLOR = DARK_GREEN;
final ALT_PROFILE_CIRCLE_COLOR = LIGHT_GREY;
final ALT_PROFILE_CIRCLE_TEXT_COLOR = Colors.black;

//CONFIG
final String INITIAL_ROUTE = routeManageUniversity; //Initial screen loaded.
