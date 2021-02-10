import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';

const double HZ_PADDING = 130;
const double V_PADDING = 0;

class GCMMeetingButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.fromLTRB(
      //     HZ_PADDING, V_PADDING, HZ_PADDING, V_PADDING),
      height: 80,
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
          //MEETING ITEMS
          children: <Widget>[
            _GCMItem('Meeting 1'),
            //route here
            SizedBox(width: 10),
            _GCMItem('Meeting 2'),
            //route here
            SizedBox(width: 10),
            _GCMItem('Meeting 3'),
            //route here
          ]),
    );
  }
}

class _GCMItem extends StatelessWidget {
  final String title;
  const _GCMItem(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 150,
        height: 40,
        child: RaisedButton(
          child: Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 15)),
          // color: TEAL,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          onPressed: () {},
        ),
      ),
    );
  }
}
