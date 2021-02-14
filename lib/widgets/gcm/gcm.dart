import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:veritas_admin/widgets/homepage/homepage.dart';
import 'package:veritas_admin/widgets/navbar/profile_image.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/widgets/navbar/navigation_bar.dart';
import '../../routes/routes.dart';
import '../navbar/navigation_bar.dart';

class GCM extends StatelessWidget {
  const GCM({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          child: Column(
        children: [
          NavigationBar(1),
          SizedBox(height: 120),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: FlatButton(
                  child: Text(
                    'Self-Reflection Questions',
                    textAlign: TextAlign.center,
                  ),
                  color: LIGHT_GREY,
                  padding: EdgeInsets.all(45.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.pushNamed(context, routeGCMprep);
                  },
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 300,
                child: FlatButton(
                  child: Text(
                    'Conversation Outlines',
                    textAlign: TextAlign.center,
                  ),
                  color: LIGHT_GREY,
                  padding: EdgeInsets.all(45.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.pushNamed(context, routeGCM);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: FlatButton(
                  child: Text(
                    'Feedback Questions',
                    textAlign: TextAlign.center,
                  ),
                  color: LIGHT_GREY,
                  padding: EdgeInsets.all(45.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.pushNamed(context, routeGCM);
                  },
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 300,
                child: FlatButton(
                  child: Text(
                    'Manage Promotion Templates',
                    textAlign: TextAlign.center,
                  ),
                  color: LIGHT_GREY,
                  padding: EdgeInsets.all(45.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.pushNamed(context, routeGCM);
                  },
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
