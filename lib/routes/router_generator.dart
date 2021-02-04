import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/routes/routes.dart';
import 'package:veritas_admin/views/financial_summary/financial_summary_view.dart';
import 'package:veritas_admin/views/gcm/gcm_view.dart';
import 'package:veritas_admin/views/manage_admin/manage_admin_view.dart';
import 'package:veritas_admin/views/manage_university/manage_university_view.dart';
import 'package:veritas_admin/views/view_pairings_view/view_pairings_view.dart';
import 'package:veritas_admin/views/view_users/view_users_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeManageUniversity:
        return MyCustomRoute(builder: (_) => ManageUniversityView());
        break;
      case routeManageAdmin:
        return MyCustomRoute(builder: (_) => ManageAdminView());
        break;
      case routeGCM:
        return MyCustomRoute(builder: (_) => GCMView());
        break;
      case routeViewUsers:
        return MyCustomRoute(builder: (_) => ViewUsersView());
        break;
      case routeViewPairings:
        return MyCustomRoute(builder: (_) => ViewPairingsView());
        break;
      case routeFinancialSummary:
        return MyCustomRoute(builder: (_) => FinancialSummaryView());
        break;
    }
  }
}

//For transition editing:
//https://stackoverflow.com/questions/49874272/how-to-navigate-to-other-page-without-animation-flutter
class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    //if (settings.isInitialRoute) return child;
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    return new FadeTransition(opacity: animation, child: child);
  }
}
