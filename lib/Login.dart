

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newindent/Dashboard.dart';
import 'package:newindent/Loginscreen.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Login",style: TextStyle(
            fontFamily: 'Montserrat',
          fontSize: 20
        ),),
      ),
      body: Loginscreen(

    ));
  }
}
