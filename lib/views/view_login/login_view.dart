import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/helper_functions.dart';
import 'package:veritas_admin/style.dart';
import 'package:veritas_admin/widgets/login/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: getHeight(context)/3),
            Text(
              'Veritas Admin Portal',
              style: TitleTextStyle,
            ),
            SizedBox(height: 100),
            LoginForm()
          ],

        ),
        width: getWidth(context)/5,

      ),
    );
  }
}