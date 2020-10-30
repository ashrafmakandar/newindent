import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newindent/ListElement.dart';
import 'package:http/http.dart' as http;

import 'package:url_launcher/url_launcher.dart';

class Documentviews extends StatefulWidget {
  String password, id;
  ListElement user;

  Documentviews({this.user, this.password, this.id});

  @override
  _DocumentviewsState createState() => _DocumentviewsState();
}

class _DocumentviewsState extends State<Documentviews> {
  var doctypes, docnames,post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Document"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: FutureBuilder(
                  future: getdrop(this.widget.id, this.widget.password,
                      this.widget.user.userName),
                  builder: (context, snapshot) {
                    if (snapshot.hasData &&
                        snapshot.connectionState == ConnectionState.done) {
                      return ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            String posts = snapshot.data[index];
                            var post = posts;
                            var my = docnames[post].toString();
                            return Card(
                              child: GestureDetector(
                                onTap: () async {
                                  print("clciked");
                                  var post = posts;
                                  var dd = doctypes.toString().contains(post);

                                  var mm = doctypes[post].toString();

                                  print(mm.toString());
                                  print("nammes" + my.toString());
                                  if (mm.contains("image/png") ||
                                      mm.contains("image/jpeg") ||
                                      mm.contains("image/jpg")) {
                                    var password = widget.password;
                                    var email = widget.user.userName;
                                    var url =
                                        'http://indent.kalyanicrm.com/?entryPoint=image&id=$post';

/*Fluttertoast.showToast(msg: post);*/


                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  } else {
                                    var password = widget.password;
                                    var email = widget.user.userName;
                                    var url =
                                        'http://indent.kalyanicrm.com/?entryPoint=download&id=$post';

                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  }
                                },
                                child: Container(
                                    color: Colors.indigoAccent,
                                    height: 50,
                                    child: SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          color: Colors.indigoAccent,
                                          child: Text(
                                            "Document  :  " + my.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ),
                                      ),
                                      height: 20,
                                    )),
                              ),
                            );
                          });
                    } else if (snapshot.connectionState ==
                        ConnectionState.none) {
                      return Text("No data");
                    }
                    return CircularProgressIndicator();
                  }),
            )
          ],
        ),
      ),
    );
  }

  Future<List> getdrop(String id, String password, String username) async {
    var password = widget.password;
    var email = widget.user.userName;
    var msg = id;
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$email:$password'));
    final headers = {
      HttpHeaders.authorizationHeader: basicAuth,
      HttpHeaders.contentTypeHeader: "application/json"
    };
    final res = await http.get(
        "http://indent.kalyanicrm.com/api/v1/Opportunity/$msg",
        headers: headers);

    var datas = json.decode(res.body);
    List dd = datas['requiredDocumentsIds'];
    doctypes = datas['requiredDocumentsTypes'];
    docnames = datas['requiredDocumentsNames'];

    return dd;
  }
}
