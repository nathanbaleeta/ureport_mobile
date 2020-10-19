import 'package:flutter/material.dart';
import 'package:ureport_app/app.dart';
import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:ureport_app/registration/User.dart';
//import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(UReportApp());

final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

/// This Widget is the main application widget.
class UReportApp extends StatefulWidget {
  static const String _title = 'U-Report';

  @override
  _UReportAppState createState() => _UReportAppState();
}

class _UReportAppState extends State<UReportApp> {
  @override
  void initState() {
    String fcm_Token = '';
    super.initState();
    _firebaseMessaging.getToken().then((token) {
      print(token);
      fcm_Token = token;
    });
    //registerContact(fcm_Token);
  }

  static final String rapidPro =
      "https://app.rapidpro.io/c/fcm/e3717783-c723-4f78-876d-755318704c89/register";

  void registerContact(String token) async {
    print("I went here");
    Map<String, String> headers = {
      "Authorization": "Token 9a3970ab2bb7def48c69bce852f93b80d2d02d61",
      "Content-Type": "application/json"
    };
    Map<String, String> body = {
      "name": "Henry Adams",
      "language": "eng",
      "urns": "tel:+256772738552",
      "groups": "19200d4d-6eb9-4790-9a5b-560ab49c1e6a"
    };
    String encodedBody = jsonEncode(body);
    var queryParameters = {"urn": "tel:+256772738552", "fcm_token": token};

    //var uri = Uri.https(rapidPro, ,queryParameters );

    http.Response response =
        await http.post(rapidPro, headers: headers, body: encodedBody);
    //print("done");
    //print(response.toString());
    if (response.statusCode == 202) {
      print("Did it successfully");

      //return User.fromJson(jsonDecode(response.body));
    } else {
      print(response.statusCode);
      print(response.toString());
      throw Exception('Failed to register user.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: UReportApp._title,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: TabScreen(),
    );
  }
}
