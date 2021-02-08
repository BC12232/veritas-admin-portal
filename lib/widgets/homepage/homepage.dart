import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/views/home_page/home_page_view.dart';
import 'package:veritas_admin/widgets/navbar/profile_image.dart';
import '../../routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          child: Column(
        children: [
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            ProfileImage(''),
          ]),
          Text(
            'Veritas Admin Portal',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 30, color: BLACK_COLOR),
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: FlatButton(
                  child: Text(
                    'Manage \n University',
                    textAlign: TextAlign.center,
                  ),
                  color: LIGHT_GREY,
                  padding: EdgeInsets.all(45.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.pushNamed(context, routeManageUniversity);
                  },
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 300,
                child: FlatButton(
                  child: Text(
                    'Manage \n Administrator',
                    textAlign: TextAlign.center,
                  ),
                  color: LIGHT_PINK,
                  padding: EdgeInsets.all(45.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.pushNamed(context, routeManageAdmin);
                  },
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 300,
                child: FlatButton(
                  child: Text(
                    'Global Content \n Managment',
                    textAlign: TextAlign.center,
                  ),
                  color: LIGHT_PINK,
                  padding: EdgeInsets.all(45.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.pushNamed(context, routeManageUniversity);
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
                    'View Users ',
                    textAlign: TextAlign.center,
                  ),
                  color: LIGHT_GREY,
                  padding: EdgeInsets.all(53.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.pushNamed(context, routeViewUsers);
                  },
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 300,
                child: FlatButton(
                  child: Text(
                    'View Parings',
                    textAlign: TextAlign.center,
                  ),
                  color: LIGHT_GREY,
                  padding: EdgeInsets.all(53.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.pushNamed(context, routeViewPairings);
                  },
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 300,
                child: FlatButton(
                  child: Text(
                    'Financial \n Summary',
                    textAlign: TextAlign.center,
                  ),
                  color: LIGHT_GREY,
                  padding: EdgeInsets.all(45.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.pushNamed(context, routeFinancialSummary);
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
