import 'dart:js';

import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/globals/helper_functions.dart';


class LoginForm extends StatefulWidget{
  @override
  LoginFormState createState(){
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //build form widget with the _formKey generated above
    return Form(
          key:_formKey,
          child: Column(
            children: <Widget>[
              _buildEmailField(),
              SizedBox(height: 20),
              _buildPasswordField(),
              SizedBox(height: 40),
              _buildSubmitButton()
            ]
          )
        );
  }
}

Widget _buildEmailField(){
  return TextFormField(
        decoration: InputDecoration(
            hintText: 'Email',
            filled: true,
            fillColor: LIGHT_GREY,
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0)
              ),
            )
        ),
        validator: (value){
          if (value.isEmpty){
            return 'Please enter your email';
          }
          return null;
        },
      );
}

Widget _buildPasswordField(){
  return TextFormField(
    decoration: InputDecoration(
      hintText: 'Password',
      filled: true,
      fillColor: LIGHT_GREY,
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
            const Radius.circular(10.0)
        ),
      )
    ),
    validator: (value){
      if (value.isEmpty){
        return 'Please enter your email';
       }
      return null;
    },
  );
}

Widget _buildSubmitButton(){
  return ElevatedButton(
    onPressed: (){}, //this is where we define logic for login
    style: ElevatedButton.styleFrom(
      primary: DARK_GREEN,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    child: Text('Login')
  );
}

void main(){

}