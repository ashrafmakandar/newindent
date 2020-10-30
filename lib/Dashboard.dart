import 'dart:io';

import 'package:flutter/material.dart';
import 'package:newindent/Account.dart';
import 'package:newindent/Indent.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

import 'ListElement.dart';


void main() => runApp(Dashboard());

class Dashboard extends StatefulWidget {
  final ListElement user;
  final String password;

  Dashboard({this.user, this.password});

  dash createState() => dash();
}

class dash extends State<Dashboard> {
  @override
  initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: TextStyle(
          fontSize: 20,
          fontFamily: 'OpenSans'
        ),),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Image.asset('images/indent.png',height: 150,width: 150,),
                  elevation: 10.0,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,

                          MaterialPageRoute(

                              builder: (context) => Indent(
                                    user: widget.user,
                                    password: widget.password,
                                  ))),
                      child: Text(
                        "INDENT",
                        style: TextStyle(color: Colors.blue, fontSize: 25,fontFamily: 'Montserrat'),
                      ),
                    )),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  child:  Image.asset('images/budget.png',height: 150,width: 150,),
                  elevation: 10.0,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Account(user: widget.user,password: widget.password))),
                      child: Text(
                        "ACCOUNT",
                        style: TextStyle(color: Colors.blue, fontSize: 25,fontFamily: 'Montserrat'),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
