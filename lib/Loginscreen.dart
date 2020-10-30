import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newindent/Dashboard.dart';
import 'package:http/http.dart' as http;
import 'package:newindent/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(Loginscreen());

class Loginscreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Loginscreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var id;

  Future Login() async {
    String email = emailController.text;
    String password = passwordController.text;
    if (email.isEmpty || password.isEmpty) {
      Fluttertoast.showToast(
          msg: "fields are empty",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (email.length < 4 || password.length < 4) {
      Fluttertoast.showToast(
          msg: "fields are  less value",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      String basicAuth =
          'Basic ' + base64Encode(utf8.encode('$email:$password'));
      print(basicAuth);
      final response = await http.get(
        'http://43.254.41.228/api/v1/User?Username=$email&Password=$password',
        // cant see any response how to print response//try
        // Send authorization headers to the backend.
        headers: {
          HttpHeaders.authorizationHeader: basicAuth,
          HttpHeaders.contentTypeHeader: "application/json"
        },
      );
      final user = User.fromJson(json.decode(response.body));
      print(response.body);
      if (response.statusCode == 200) {

        for (int i = 0; i < user.list.length; i++) {
          if (user.list[i].userName.contains(email)) {
            id = user.list[i].id;



            var jsonMap = {
              'Username': email,
              'Password': password,
              'devicetoken': user.list.first.devicetoken
            };
            String jsonStr = jsonEncode(jsonMap);

            var rs = await http.put(
                'http://indent.kalyanicrm.com/api/v1/User/' + id,
                headers: {
                  HttpHeaders.authorizationHeader: basicAuth,
                  HttpHeaders.contentTypeHeader: "application/json"
                },
                body: jsonStr);
            print(rs.body);

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Dashboard(
                      user: user.list[i],
                      password: password,
                    )));

          }
        }


        } else {
          Fluttertoast.showToast(
              msg: "please check value in email",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }


      return user;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: "Enter Name",
                  labelStyle: TextStyle(fontFamily: 'Montserrat'),
                  fillColor: Colors.red,
                  enabledBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.cyanAccent, width: 2.0),
                    borderRadius: new BorderRadius.circular(10.0),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.security),
                fillColor: Colors.blue,
                labelText: "Enter Password",
                labelStyle: TextStyle(fontFamily: 'Montserrat'),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.cyanAccent, width: 2.0),
                    borderRadius: new BorderRadius.circular(10.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: new BorderRadius.circular(10.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () => Login(),
              child: Text(
                "LOGIN",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat'),
              ),
              color: Colors.blue,
              splashColor: Colors.deepPurpleAccent,
            ),
          )
        ],
      ),
    );
  }
}
