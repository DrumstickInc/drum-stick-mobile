import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert' show json, base64, ascii;

import 'log_in.dart';

const SERVER_IP = 'http://192.168.1.167:5000';
final storage = FlutterSecureStorage();

void main() => runApp(new MyApp());

final routes = {
  '/login': (BuildContext context)=> new Login(),
  '/home' : (BuildContext context)=> new HomePage(),
  '/': (BuildContext context)=> new Login(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Drumstick',
      debugShowCheckedModeBanner: false,
      theme: ThemeData
        (
        scaffoldBackgroundColor: Colors.white,
        dialogBackgroundColor: Colors.black,
        primarySwatch: Colors.deepOrange,
        cardColor: Colors.white70,
        accentColor: Colors.black,
      ),
      routes: routes,
      home: HomePage(),//need to remove it eventually
    );
  }
}

