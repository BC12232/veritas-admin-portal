import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/routes/routes.dart';
import 'package:veritas_admin/widgets/navbar/profile_image.dart';
import 'navigation_item.dart';

//for the whole navbar, not navbar item
const double HZ_PADDING = 100;
const double V_PADDING = 0;

//nav bar is stateful cuz need to bold current item.
class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();

  //hacky, but it works
  int _index;
  NavigationBar(int _index) {
    _index = this._index;
    print("setting index... :");
    print(_index);
  }

  int getIndex() {
    return _index;
  }
}

class _NavigationBarState extends State<NavigationBar> {
  //int index = 0;
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    print('testing.......');
    print(PAGE_INDEX);

    return Container(
      color: TOP_BAR_COLOR,
      padding: const EdgeInsets.fromLTRB(
          HZ_PADDING, V_PADDING, HZ_PADDING, V_PADDING),
      height: 130.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          NavigationItem(
            title: 'Manage University',
            routeName: routeManageUniversity,
            onHighlight: onHighlight,
            thisIndex: 0,
          ),
          NavigationItem(
            title: 'Manage Admin',
            routeName: routeManageAdmin,
            onHighlight: onHighlight,
            thisIndex: 1,
          ),
          NavigationItem(
            title: 'Global C.M.',
            routeName: routeGCM,
            onHighlight: onHighlight,
            thisIndex: 2,
          ),
          NavigationItem(
            title: 'View Users',
            routeName: routeViewUsers,
            onHighlight: onHighlight,
            thisIndex: 3,
          ),
          NavigationItem(
            title: 'View Pairings',
            routeName: routeViewPairings,
            onHighlight: onHighlight,
            thisIndex: 4,
          ),
          NavigationItem(
            title: 'Financial Summary',
            routeName: routeFinancialSummary,
            onHighlight: onHighlight,
            thisIndex: 5,
          ),
          ProfileImage(true)
        ],
      ),
    );
  }

//On init, bold.
  @override
  void initState() {
    //onHighlight(PAGE_INDEX) //SET TO MANAGE UNIVERSITY.
    //changeHighlight(PAGE_INDEX);
  }

//Red => Bold Selected current index
//TODO: call this on load!
  void onHighlight(int ind) {
    //changeHighlight(ind);
    /*
    switch (ind) {
      case 0:
        print('1');
        //SHOW_NAVBAR = false;
        changeHighlight(0);
        break;
      case routeManageAdmin:
        changeHighlight(1);
        break;
      case routeGCM:
        changeHighlight(2);
        break;
      case routeViewUsers:
        changeHighlight(3);
        break;
      case routeViewPairings:
        changeHighlight(4);
        break;
      case routeFinancialSummary:
        changeHighlight(5);
        break;
  }*/
  }

/*DO NOT DELETE UNTIL WE FIGURE OUT HOW TO DO THIS STATEFULLY!*/
  void changeHighlight(int newIndex) {
    /*setState(() {
      PAGE_INDEX = newIndex;
    });*/
  }
}
