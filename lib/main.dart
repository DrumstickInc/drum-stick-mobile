

import 'package:flutter_app/pages/HomePage.dart';

import 'package:flutter/material.dart';

import 'package:flutter_app/pages/home_page2.dart';
import 'package:flutter_app/pages/login/login_page.dart';
import 'package:flutter_app/pages/login/register.dart';
import 'package:flutter_app/models/sliderModel.dart';

//final storage = FlutterSecureStorage();

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new HomePage(),
  '/register': (BuildContext context) => new RegisterPage(),
  '/': (BuildContext context) => new LoginPage(),
};

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Drumstick',
      debugShowCheckedModeBanner: false,
      theme: ThemeData
        (
        scaffoldBackgroundColor: Colors.white,
        dialogBackgroundColor: Colors.indigo,
        primarySwatch: Colors.deepOrange,
        cardColor: Colors.white70,
        accentColor: Colors.lime,
      ),
      routes: routes,
    );
  }
}
