import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/helper_functions.dart';
import 'package:veritas_admin/widgets/login/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 120),
            Text(
              'Veritas Admin Portal',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 60),
            LoginForm()
          ],

        ),
        width: getWidth(context)*0.3,

      ),
    );
  }
}