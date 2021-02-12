import 'package:flutter/material.dart';

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
        fillColor: Colors.grey,
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