import 'package:flutter/cupertino.dart';
import 'package:veritas_admin/constants/constants.dart';
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
}

class _NavigationBarState extends State<NavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: LIGHT_GREY,
      padding: const EdgeInsets.fromLTRB(
          HZ_PADDING, V_PADDING, HZ_PADDING, V_PADDING),
      height: 130.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          NavigationItem(
            selected: index == 1,
            title: 'Manage University',
            routeName: routeManageUniversity,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 2,
            title: 'Manage Admin',
            routeName: routeManageAdmin,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 3,
            title: 'Global C.M.',
            routeName: routeGCM,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 4,
            title: 'View Users',
            routeName: routeViewUsers,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 5,
            title: 'View Pairings',
            routeName: routeViewPairings,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 6,
            title: 'Financial Summary',
            routeName: routeFinancialSummary,
            onHighlight: onHighlight,
          ),
          ProfileImage(
              'TODO: insert image route when backend is rdy... not working yet')
        ],
      ),
    );
  }

//On init, bold.
  @override
  void initState() {
    onHighlight(INITIAL_ROUTE); //SET TO MANAGE UNIVERSITY.
  }

//Red => Bold Selected current index
//TODO: call this on load!
  void onHighlight(String route) {
    switch (route) {
      case routeManageUniversity:
        changeHighlight(1);
        break;
      case routeManageAdmin:
        changeHighlight(2);
        break;
      case routeGCM:
        changeHighlight(3);
        break;
      case routeViewUsers:
        changeHighlight(4);
        break;
      case routeViewPairings:
        changeHighlight(5);
        break;
      case routeFinancialSummary:
        changeHighlight(6);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
