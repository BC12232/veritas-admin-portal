import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/widgets/navbar/navigation_bar.dart';
import 'package:veritas_admin/widgets/gcm/gcm_prep.dart';
import '../../routes/routes.dart';

class GCMPrepView extends StatelessWidget {
  const GCMPrepView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GCMPrep();
  }
}
