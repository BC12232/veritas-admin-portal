import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinancialSummaryView extends StatelessWidget {
  const FinancialSummaryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Financial Summary',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
