import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/widgets/navbar/navigation_bar.dart';
import 'package:veritas_admin/widgets/gcm/gcm.dart';
import '../../routes/routes.dart';

class GCMView extends StatelessWidget {
  const GCMView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GCM();
  }
}
