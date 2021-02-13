import 'dart:async';
import 'dart:io';

// import 'package:flutter_quill/widgets/controller.dart';
// import 'package:flutter_quill/widgets/editor.dart';
// import 'package:flutter_quill/widgets/toolbar.dart';
// import 'package:flutter_quill/flutter_quill.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/widgets/navbar/navigation_bar.dart';
import '../../globals/constants.dart';
import '../../routes/routes.dart';

class GCMPrep extends StatelessWidget {
  const GCMPrep({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          child: Column(
        children: [
          NavigationBar(1),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 100),
              Text(
                'Self-Reflection Questions',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 30),
          SizedBox(height: 86),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 200,
              child: FlatButton(
                child: Text(
                  'Save',
                  textAlign: TextAlign.center,
                  style: kSmallButtonTextStyle,
                ),
                height: 68,
                color: DARK_GREEN,
                padding: EdgeInsets.all(45.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.pushNamed(context, routeGCMprep);
                },
              ),
            ),
          ]),
        ],
      )),
    );
  }
}
