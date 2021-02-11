import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/globals/helper_functions.dart';
import 'package:veritas_admin/routes/routes.dart';

import 'interactive_nav_item.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final String routeName;
  final Function onHighlight;
  final int thisIndex;

  const NavigationItem({
    @required this.title,
    @required this.routeName,
    @required this.onHighlight,
    @required this.thisIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TAKES YOU to the new route.
        PAGE_INDEX = thisIndex;
        navKey.currentState.pushNamed(routeName);
        //onHighlight(routeName);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(context) * NAVBAR_PADDING_RATIO),
        child: InteractiveNavItem(
          text: title,
          routeName: routeName,
          selected: thisIndex == PAGE_INDEX,
        ),
      ),
    );
  }
}
