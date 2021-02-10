import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/globals/helper_functions.dart';
import 'package:veritas_admin/routes/routes.dart';
import 'package:veritas_admin/widgets/navbar/meeting_buttons.dart';

//4.2 for development.
class GCMView extends StatelessWidget {
  const GCMView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: LIGHT_PINK,
      child: Column(children: [
        Text('Conversation Outlines'),
        GCMMeetingButtons(),
        _BoxRow(),
        _BoxRow(),
        _BoxRow(),
        _GreenButton()
      ]),
    );
  }
}

//TODO: use Flora's widget
class _BoxRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var WIDTH_LONG = getWidth(context) * 0.6;
    var WIDTH_SHORT = getWidth(context) * 0.14;
    var HEIGHT = 140.0;

    //TODO: scroll on overflow

    return Container(
        padding: EdgeInsets.all(0.25),
        child: Row(
          children: [
            Container(width: WIDTH_LONG, height: HEIGHT, color: LIGHT_GREY),
            Container(width: WIDTH_SHORT, height: HEIGHT, color: VERITAS_RED)
          ],
        ));
  }
}

//Pasted from flora's meeting buttons.
class _GreenButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 150,
        height: 40,
        child: RaisedButton(
          child: Text('Save',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 15)),
          // color: TEAL,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          onPressed: () {
            Navigator.pushNamed(context, routeManageUniversity);
          },
        ),
      ),
    );
  }
}
