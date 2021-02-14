//HELPERS (these aren't really constants... just some tools.)
import 'package:flutter/cupertino.dart';

//Return width of current context
double getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

//Return height of current context
double getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
