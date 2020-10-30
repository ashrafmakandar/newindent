import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newindent/Accountmodels/Accounts.dart';
import 'package:newindent/ListElement.dart';

import 'package:http/http.dart' as http;

void main() => runApp(Account());

class Account extends StatefulWidget {
  final ListElement user;
  final String password;

  Account({this.user, this.password});

  @override
  _State createState() => _State();
}

class _State extends State<Account> {
  Accounts accounts = Accounts();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getaccounts();
  }

  @override
  Widget build(BuildContext context) {
    final textcontrol = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Account",
            style: TextStyle(fontFamily: 'Montserrat'),
          ),
        ),
        body: Container(

          child:
            ListView.builder(

                itemCount: accounts.list?.length ?? 0,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
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
                                  accounts.list[index].purchaseOrderDate.toString(),
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat')),
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
                                accounts.list[index].paymentMode
                                    .toString()
                                    .substring(12),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontFamily: 'Montserrat')),
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
                            Text(accounts.list[index].employeeId,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontFamily: 'Montserrat')),
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
                                accounts.list[index].outlet.toString().substring(7),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontFamily: 'Montserrat')),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Document",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15.0,
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("Data"),
                            SizedBox(
                              height: 10.0,
                            ),
                            FlatButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  child: new Dialog(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(" CEO Approval",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15.0,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          accounts.list[index].cEoApproval
                                              .toString()
                                              .substring(12),
                                          style:
                                              TextStyle(fontFamily: 'Montserrat'),
                                        ),
                                        Text("CEO Remarks",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15.0,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          accounts.list[index].cEoRemarks
                                              .toString(),
                                          style:
                                              TextStyle(fontFamily: 'Montserrat'),
                                        ),
                                        Text(" VP Approval",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15.0,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          accounts.list[index].vPApproval
                                              .toString()
                                              .substring(12),
                                          style:
                                              TextStyle(fontFamily: 'Montserrat'),
                                        ),
                                        Text(" VP Remarks",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15.0,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          accounts.list[index].vPRemarks.toString(),
                                          style:
                                              TextStyle(fontFamily: 'Montserrat'),
                                        ),
                                        Text(" Outlet Head Approval",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15.0,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          accounts.list[index].outletHeadSrGm
                                              .toString()
                                              .substring(12),
                                          style:
                                              TextStyle(fontFamily: 'Montserrat'),
                                        ),
                                        Text(" Outlet Head Remarks",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15.0,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          accounts.list[index].outletHeadGmRemarks
                                              .toString(),
                                          style:
                                              TextStyle(fontFamily: 'Montserrat'),
                                        ),
                                        Text("Spares Approval",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15.0,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold)),
                                        Text("Spares Approval Here"),
                                        Text(" Spares Remarks",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold)),
                                        Text(" Spares Remarks Here"),
                                        FlatButton(
                                          onPressed: () {},
                                          child: Text(
                                            "CANCEL",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                "ACTION",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              color: Colors.deepOrange,
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                        Column(
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
                                  accounts.list[index].productCategory,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.0)),
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
                            Text(accounts.list[index].refNo,
                                style:
                                    TextStyle(color: Colors.black, fontSize: 12.0)),
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
                            Text(accounts.list[index].name,
                                style:
                                    TextStyle(color: Colors.black, fontSize: 12.0)),
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
                            Text(accounts.list[index].amount.toString(),
                                style:
                                    TextStyle(color: Colors.black, fontSize: 12.0)),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Second Item5",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                            Text("Data"),
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
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Text(
                                            "Details of Requirement",
                                            style: TextStyle(
                                                fontFamily: 'OpenSans',
                                                color: Colors.blue),
                                          ),
                                          Text(accounts
                                              .list[index].detailsOfRequirment),
                                          Text("Amount",
                                              style: TextStyle(
                                                  fontFamily: 'OpenSans',
                                                  color: Colors.blue)),
                                          Text(accounts.list[index].amount
                                              .toString()),
                                          Text("Remarks",
                                              style: TextStyle(
                                                  fontFamily: 'OpenSans',
                                                  color: Colors.blue)),
                                          TextFormField(
                                            controller: textcontrol,
                                            decoration: InputDecoration(
                                                labelText: "Enter Remarks ",
                                                border: OutlineInputBorder(),
                                                contentPadding:
                                                    EdgeInsets.all(10.0)),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              FlatButton(
                                                  onPressed: () async {
                                                    Fluttertoast.showToast(
                                                        msg: widget.user.id,
                                                        gravity:
                                                            ToastGravity.BOTTOM);

                                                    String usergroup =
                                                        widget.user.userGroup;
                                                    if (usergroup == "CFO") {
                                                      var jsonMap = {
                                                        'cFOApproval': 'Approved',
                                                        'cFORemarks':
                                                            textcontrol.text,
                                                      };
                                                      String jsonStr =
                                                          jsonEncode(jsonMap);
                                                      var password =
                                                          widget.password;
                                                      var email =
                                                          widget.user.userName;
                                                      String basicAuth = 'Basic ' +
                                                          base64Encode(utf8.encode(
                                                              '$email:$password'));

                                                      final res = await http.put(
                                                          "http://indent.kalyanicrm.com/api/v1/Opportunity/" +
                                                              accounts.list[index].id,
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
                                                        fontFamily: 'Montserrat',
                                                      ))),
                                              FlatButton(
                                                  onPressed: () async {
                                                    String usergroup =
                                                        widget.user.userGroup;
                                                    if (usergroup == "CFO") {
                                                      var jsonMap = {
                                                        'cFOApproval': 'Rejected',
                                                        'cFORemarks':
                                                            textcontrol.text,
                                                      };

                                                      String jsonStr =
                                                          jsonEncode(jsonMap);
                                                      var password =
                                                          widget.password;
                                                      var email =
                                                          widget.user.userName;
                                                      String basicAuth = 'Basic ' +
                                                          base64Encode(utf8.encode(
                                                              '$email:$password'));

                                                      final res = await http.put(
                                                          "http://indent.kalyanicrm.com/api/v1/Opportunity/" +
                                                              accounts.list[index].id,
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
                                                  color: Colors.deepOrange,
                                                  textColor: Colors.white,
                                                  child: Text("REJECT",
                                                      style: TextStyle(
                                                        fontFamily: 'Montserrat',
                                                      ))),
                                            ],
                                          ),
                                          FlatButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              color: Colors.black,
                                              textColor: Colors.white,
                                              child: Text("CANCEL",
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                  ))),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Text("APPROVAL",
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
                }),

        ));
  }

  Future<Void> getaccounts() async {
    var jsonMap = {
      'Username': widget.user.userName,
      'Password': widget.password,
    };
    var password = widget.password;
    var email = widget.user.userName;
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$email:$password'));

    final headers = {
      HttpHeaders.authorizationHeader: "Basic bXlyX2dtOmthbHlhbmlAMTIz",
      HttpHeaders.contentTypeHeader: "application/json"
    };

    final response = await http.get(
        'http://indent.kalyanicrm.com/api/v1/CASHPAYMENT?type="in"&attribute="indentStatus"&value="Pending from CFO&Username="$email"&password="$password"',
        //pass in url

        headers: headers);
    print(response.body);
    final responseJsonItems = Accounts.fromJson(json.decode(response.body));

    setState(() {
      accounts = responseJsonItems;
    });
  }
}
