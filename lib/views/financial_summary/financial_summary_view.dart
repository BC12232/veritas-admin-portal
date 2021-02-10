import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/widgets/navbar/navigation_bar.dart';

class FinancialSummaryView extends StatelessWidget {
  const FinancialSummaryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SHOW_NAVBAR = true;
    return Center(
      child: Container(
          child: Column(
        children: [
          //NavigationBar(),
          Text(
            'Financial Summary',
            style: TextStyle(fontSize: 30),
          ),
        ],
      )),
    );
  }
}
