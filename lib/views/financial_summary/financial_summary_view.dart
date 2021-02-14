import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/widgets/navbar/navigation_bar.dart';

class FinancialSummaryView extends StatelessWidget {
  const FinancialSummaryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NavigationBar(1),
      Center(
        child: Container(
          child: Text(
            'Financial Summary',
            style: TextStyle(fontSize: 30),
          ),
        ),
      )
    ]);
  }
}
