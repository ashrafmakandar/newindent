import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newindent/Drops.dart';
import 'package:newindent/documents/Document.dart';
import 'package:newindent/documentviews.dart';
import 'package:newindent/models/Items.dart';

import 'package:newindent/ListElement.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'package:newindent/ListElement.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(Indent());

class Indent extends StatefulWidget {
  final ListElement user;
  final String password;

  Indent({this.user, this.password});

  @override
  _State createState() => _State();
}

class _State extends State<Indent> {
  Items responseJson = Items();
  Document documents = Document();
  var da;
  List<String> ids = List();
  List<DropdownMenuItem<String>> items = new List();
  List<String> ii = new List();
  String _dropDownButtonValue = 'No Value Chosen';
  String selectedvalue;

  @override
  initState() {
    // TODO: implement initState
    super.initState();
    getvalues();
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    getvalues();
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    final textcontrol = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "INDENT",
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 20),
          ),
        ),
        body: Center(
          child: Container(
            child: RefreshIndicator(
              onRefresh: getvalues,
              child: FutureBuilder(
                future: getvalues(),
                builder: (context, snapshot) {
                  if (snapshot.hasData &&
                      snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          Map posts = snapshot.data[index];
                          return Card(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Purchase Order Date",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: AutoSizeText(
                                          '${posts['purchaseOrderDate']}',
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.5,
                                            fontFamily: 'Montserrat',
                                          )),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Payment Mode",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${posts['paymentMode']}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.5,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Emp-Id",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${posts['employeeId']}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.5,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Outlet",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${posts['outlet']}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.5,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    FlatButton(
                                        child: Text(
                                          "CLICK FOR DOCS",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                        color: Colors.blueAccent,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Documentviews(
                                                          user: widget.user,
                                                          password:
                                                              widget.password,
                                                          id: posts['id'])));
                                          Fluttertoast.showToast(
                                              msg: posts['id']);
                                        }),
                                    SizedBox(
                                      height: 1.0,
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          child: new Dialog(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Text(" CEO Approval",
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 15.0,
                                                        fontFamily: 'OpenSans',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  '${posts['cEOApproval']}',
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text("CEO Remarks",
                                                    style: TextStyle(
                                                        fontFamily: 'OpenSans',
                                                        color: Colors.blue,
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  '${posts['cEORemarks']}',
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text(" VP Approval",
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 15.0,
                                                        fontFamily: 'OpenSans',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  '${posts['vPApproval']}',
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text("VP Remarks",
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 15.0,
                                                        fontFamily: 'OpenSans',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  '${posts['vPRemarks']}',
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text(" Outlet Head Approval",
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 15.0,
                                                        fontFamily: 'OpenSans',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  '${posts['outletHeadSrGM']}',
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text(" Outlet Head Remarks",
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 15.0,
                                                        fontFamily: 'OpenSans',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  '${posts['outletHeadGMRemarks']}',
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text("Spares Approval",
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 15.0,
                                                        fontFamily: 'OpenSans',
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text("Spares Approval Here"),
                                                Text(" Spares Remarks",
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(" Spares Remarks Here"),
                                                FlatButton(
                                                  onPressed: () {
                                                    Navigator.pop(context, true);
                                                  },
                                                  child: Text(
                                                    "CANCEL",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Montserrat',
                                                    ),
                                                  ),
                                                  color: Colors.blue,
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "APPROVAL",
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                      color: Colors.deepOrange,
                                      textColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Product Category",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: AutoSizeText(
                                        '${posts['productCategory']}',
                                        maxLines: 2,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.5,
                                            fontFamily: 'Montserrat'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Ref No",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${posts['refNo']}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.5,
                                          fontFamily: 'Montserrat'),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Emp Name",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${posts['name']}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.5,
                                          fontFamily: 'Montserrat'),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Indent Amount",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${posts['amount']}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.5,
                                          fontFamily: 'Montserrat'),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          child: SingleChildScrollView(
                                            child: new Dialog(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Text(
                                                    "Details of Requirement",
                                                    style: TextStyle(
                                                        fontFamily: 'OpenSans',
                                                        color: Colors.blue),
                                                  ),
                                                  Text(
                                                      '${posts['detailsOfRequirment']}',
                                                      style: TextStyle(
                                                        fontFamily: 'Montserrat',
                                                      )),
                                                  Text("Amount",
                                                      style: TextStyle(
                                                          fontFamily: 'OpenSans',
                                                          color: Colors.blue)),
                                                  Text(
                                                    '${posts['amount']}',
                                                    style: TextStyle(
                                                        fontFamily: 'Montserrat'),
                                                  ),
                                                  Text("Remarks",
                                                      style: TextStyle(
                                                          fontFamily: 'OpenSans',
                                                          color: Colors.blue)),
                                                  TextFormField(
                                                    controller: textcontrol,
                                                    decoration: InputDecoration(
                                                        labelText:
                                                            "Enter Remarks ",
                                                        border:
                                                            OutlineInputBorder(),
                                                        contentPadding:
                                                            EdgeInsets.all(10.0)),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      FlatButton(
                                                          onPressed: () async {
                                                            Fluttertoast.showToast(
                                                                msg: widget
                                                                    .user.id,
                                                                gravity:
                                                                    ToastGravity
                                                                        .BOTTOM);
                                                            String usergroup =
                                                                widget.user
                                                                    .userGroup;
                                                            if (usergroup ==
                                                                "CEO") {
                                                              var jsonMap = {
                                                                'cEOApproval':
                                                                    'Approved',
                                                                'cEORemarks':
                                                                    textcontrol
                                                                        .text,
                                                              };
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg: posts[
                                                                          'id']);
                                                              String jsonStr =
                                                                  jsonEncode(
                                                                      jsonMap);
                                                              var password =
                                                                  widget.password;
                                                              var email = widget
                                                                  .user.userName;
                                                              String basicAuth = 'Basic ' +
                                                                  base64Encode(
                                                                      utf8.encode(
                                                                          '$email:$password'));

                                                              final res = await http.put(
                                                                  "http://indent.kalyanicrm.com/api/v1/Opportunity/" +
                                                                      posts['id'],
                                                                  headers: {
                                                                    HttpHeaders
                                                                            .authorizationHeader:
                                                                        basicAuth,
                                                                    HttpHeaders
                                                                            .contentTypeHeader:
                                                                        "application/json"
                                                                  },
                                                                  body: jsonStr);
                                                              print("res" +
                                                                  res.body);

                                                            } else if (usergroup ==
                                                                "VP") {
                                                              var jsonMap = {
                                                                'vPApproval':
                                                                    'Approved',
                                                                'vPRemarks':
                                                                    textcontrol
                                                                        .text,
                                                              };
                                                              String jsonStr =
                                                                  jsonEncode(
                                                                      jsonMap);
                                                              var password =
                                                                  widget.password;
                                                              var email = widget
                                                                  .user.userName;
                                                              String basicAuth = 'Basic ' +
                                                                  base64Encode(
                                                                      utf8.encode(
                                                                          '$email:$password'));

                                                              final res = await http.put(
                                                                  "http://indent.kalyanicrm.com/api/v1/Opportunity/" +
                                                                      posts['id'],
                                                                  headers: {
                                                                    HttpHeaders
                                                                            .authorizationHeader:
                                                                        basicAuth,
                                                                    HttpHeaders
                                                                            .contentTypeHeader:
                                                                        "application/json"
                                                                  },
                                                                  body: jsonStr);

                                                              print(res.body);
                                                            } else {
                                                              var jsonMap = {
                                                                'outletHeadSrGM':
                                                                    'Approved',
                                                                'outletHeadGMRemarks':
                                                                    textcontrol
                                                                        .text,
                                                              };
                                                              String jsonStr =
                                                                  jsonEncode(
                                                                      jsonMap);
                                                              var password =
                                                                  widget.password;
                                                              var email = widget
                                                                  .user.userName;
                                                              String basicAuth = 'Basic ' +
                                                                  base64Encode(
                                                                      utf8.encode(
                                                                          '$email:$password'));

                                                              final res = await http.put(
                                                                  "http://indent.kalyanicrm.com/api/v1/Opportunity/" +
                                                                      posts['id'],
                                                                  headers: {
                                                                    HttpHeaders
                                                                            .authorizationHeader:
                                                                        basicAuth,
                                                                    HttpHeaders
                                                                            .contentTypeHeader:
                                                                        "application/json"
                                                                  },
                                                                  body: jsonStr);

                                                              print(res.body);
                                                            }
                                                          },
                                                          color: Colors.green,
                                                          textColor: Colors.white,
                                                          child: Text("APPROVE",
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Montserrat',
                                                              ))),
                                                      FlatButton(
                                                          onPressed: () async {
                                                            Fluttertoast.showToast(
                                                                msg: widget
                                                                    .user.id,
                                                                gravity:
                                                                    ToastGravity
                                                                        .BOTTOM);
                                                            String usergroup =
                                                                widget.user
                                                                    .userGroup;
                                                            if (usergroup ==
                                                                "CEO") {
                                                              var jsonMap = {
                                                                'cEOApproval':
                                                                    'Rejected',
                                                                'cEORemarks':
                                                                    textcontrol
                                                                        .text,
                                                              };
                                                              String jsonStr =
                                                                  jsonEncode(
                                                                      jsonMap);
                                                              var password =
                                                                  widget.password;
                                                              var email = widget
                                                                  .user.userName;
                                                              String basicAuth = 'Basic ' +
                                                                  base64Encode(
                                                                      utf8.encode(
                                                                          '$email:$password'));

                                                              final res = await http.put(
                                                                  "http://indent.kalyanicrm.com/api/v1/Opportunity/" +
                                                                      posts['id'],
                                                                  headers: {
                                                                    HttpHeaders
                                                                            .authorizationHeader:
                                                                        basicAuth,
                                                                    HttpHeaders
                                                                            .contentTypeHeader:
                                                                        "application/json"
                                                                  },
                                                                  body: jsonStr);
                                                              print("res" +
                                                                  res.body);

                                                            } else if (usergroup ==
                                                                "VP") {
                                                              var jsonMap = {
                                                                'vPApproval':
                                                                    'Rejected',
                                                                'vPRemarks':
                                                                    textcontrol
                                                                        .text,
                                                              };
                                                              String jsonStr =
                                                                  jsonEncode(
                                                                      jsonMap);
                                                              var password =
                                                                  widget.password;
                                                              var email = widget
                                                                  .user.userName;
                                                              String basicAuth = 'Basic ' +
                                                                  base64Encode(
                                                                      utf8.encode(
                                                                          '$email:$password'));

                                                              final res = await http.put(
                                                                  "http://indent.kalyanicrm.com/api/v1/Opportunity/" +
                                                                      posts['id'],
                                                                  headers: {
                                                                    HttpHeaders
                                                                            .authorizationHeader:
                                                                        basicAuth,
                                                                    HttpHeaders
                                                                            .contentTypeHeader:
                                                                        "application/json"
                                                                  },
                                                                  body: jsonStr);
                                                           /*   Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (BuildContext
                                                                      context) =>
                                                                          Indent()));*/
                                                              print(res.body);
                                                            } else {
                                                              var jsonMap = {
                                                                'outletHeadSrGM':
                                                                    'Rejected',
                                                                'outletHeadGMRemarks':
                                                                    textcontrol
                                                                        .text,
                                                              };
                                                              String jsonStr =
                                                                  jsonEncode(
                                                                      jsonMap);
                                                              var password =
                                                                  widget.password;
                                                              var email = widget
                                                                  .user.userName;
                                                              String basicAuth = 'Basic ' +
                                                                  base64Encode(
                                                                      utf8.encode(
                                                                          '$email:$password'));

                                                              final res = await http.put(
                                                                  "http://indent.kalyanicrm.com/api/v1/Opportunity/" +
                                                                      posts['id'],
                                                                  headers: {
                                                                    HttpHeaders
                                                                            .authorizationHeader:
                                                                        basicAuth,
                                                                    HttpHeaders
                                                                            .contentTypeHeader:
                                                                        "application/json"
                                                                  },
                                                                  body: jsonStr);
                                                              print(res.body);

                                                            }
                                                          },
                                                          color:
                                                              Colors.deepOrange,
                                                          textColor: Colors.white,
                                                          child: Text("REJECT",
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Montserrat',
                                                              ))),
                                                    ],
                                                  ),
                                                  FlatButton(
                                                      onPressed: () {
                                                        Navigator.pop(
                                                            context, true);
                                                      },
                                                      color: Colors.black,
                                                      textColor: Colors.white,
                                                      child: Text("CANCEL",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Montserrat',
                                                          ))),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text("ACTION",
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                          )),
                                      color: Colors.green,
                                      textColor: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        });
                  } else if (snapshot.connectionState == ConnectionState.none) {
                    return Text("No data");
                  }
                  return CircularProgressIndicator();
                },
              ),
            ),
          ),
        ));
  }

  Future<void> _launchURL(String selectedvalue) async {
    http: //indent.kalyanicrm.com/indent_dev/?entryPoint=download&id=w

    const url =
        'http://indent.kalyanicrm.com/indent_dev/?entryPoint=download&id=5ef98a5075c17aea7';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<List> getvalues() async {
    var jsonMap = {
      'Username': widget.user.userName,
      'Password': widget.password,
    };

    var password = widget.password;
    var email = widget.user.userName;
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$email:$password'));

    final headers = {
      HttpHeaders.authorizationHeader: basicAuth,
      HttpHeaders.contentTypeHeader: "application/json"
    };
    if (widget.user.userGroup == "GM") {
      final response = await http.get(
          'http://indent.kalyanicrm.com/api/v1/Opportunity?type="in"&attribute="indentStatus"&value="Pending from Outlet Head&Username=${widget.user.userName}&password=${widget.password}', //pass in url

          headers: headers); //sorry the url was here not in before screen
      print("values" + response.body);
      var datas = json.decode(response.body);
      List dd = datas['list'];
      return dd;
      /*    final responseJsonItems = Items.fromJson(json.decode(response.body));

      //  responseJson = responseJsonItems;
      if (!mounted) return;
      setState(() {
        responseJson = responseJsonItems;
      });*/
    } else if (widget.user.userGroup == "CEO") {
      final response = await http.get(
          'http://indent.kalyanicrm.com/api/v1/Opportunity?type="in"&attribute="indentStatus"&value="Pending from CEO&Username=${widget.user.userName}&password=${widget.password}', //pass in url

          headers: headers); //sorry the url was here not in before screen
      //  print("values" + response.body);
      print("values" + response.body);
      var datas = json.decode(response.body);
      List dd = datas['list'];
      return dd;
      /*   final responseJsonItems = Items.fromJson(json.decode(response.body));

      // responseJson = responseJsonItems;
      if (!mounted) return;
      setState(() {
        responseJson = responseJsonItems;
      });*/
    } else if (widget.user.userGroup == "VP") {
      final response = await http.get(
          'http://indent.kalyanicrm.com/api/v1/Opportunity?type="in"&attribute="indentStatus"&value="Pending from VP&Username=${widget.user.userName}&password=${widget.password}', //pass in url

          headers: headers); //sorry the url was here not in before screen
      print("values" + response.body);
      var datas = json.decode(response.body);
      List dd = datas['list'];
      return dd;
      /*   final responseJsonItems = Items.fromJson(json.decode(response.body));

      // responseJson = responseJsonItems;
      if (!mounted) return;
      setState(() {
        responseJson = responseJsonItems;
      });*/
    }
  }

  Future<void> getdropdownvalues(int index) async {
    var password = widget.password;
    var email = widget.user.userName;

    Fluttertoast.showToast(
        msg: widget.user.id + "" + email + "" + password,
        backgroundColor: Colors.red,
        textColor: Colors.black);
    var msg = responseJson.list[index].id;
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$email:$password'));
    final headers = {
      HttpHeaders.authorizationHeader: basicAuth,
      HttpHeaders.contentTypeHeader: "application/json"
    };
    final res = await http.get(
        "http://indent.kalyanicrm.com/api/v1/Opportunity/$msg",
        headers: headers);
    //    print("new values   =====" + res.body + "eg");
    //  print(res.statusCode);
    /* _launchURL();*/

    final docresponse = Document.fromJson(json.decode(res.body));
    var s =
        RequiredDocuments.fromJson(docresponse.requiredDocumentsNames.toJson());
    print("doctypes" + s.toString());

    print("iss" + ids.toString());
    if (docresponse.requiredDocumentsIds != null) {
      setState(() {
        ids = docresponse.requiredDocumentsIds;
      });
    }
  }

  Future<List> getdrops(int index) async {
    var password = widget.password;
    var email = widget.user.userName;

    Fluttertoast.showToast(
        msg: widget.user.id + "" + email + "" + password,
        backgroundColor: Colors.red,
        textColor: Colors.black);
    var msg = index;
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$email:$password'));
    final headers = {
      HttpHeaders.authorizationHeader: basicAuth,
      HttpHeaders.contentTypeHeader: "application/json"
    };
    final res = await http.get(
        "http://indent.kalyanicrm.com/api/v1/Opportunity/$msg",
        headers: headers);
    //    print("new values   =====" + res.body + "eg");
    //  print(res.statusCode);
    /* _launchURL();*/
    print("document values" + res.body);

    /*   final docresponse = Document.fromJson(json.decode(res.body));
    var s =
        RequiredDocuments.fromJson(docresponse.requiredDocumentsNames.toJson());
    print("doctypes" + s.toString());

    print("iss" + ids.toString());
    if (docresponse.requiredDocumentsIds != null) {
      setState(() {
        ids = docresponse.requiredDocumentsIds;
      });
    }*/
  }
}
