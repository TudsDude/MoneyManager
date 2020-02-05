
import 'package:flutter/material.dart';
import 'package:nagarro_cash_app/User_interface/Pages/expenses.dart';
import 'package:nagarro_cash_app/User_interface/Pages/home_screen.dart';
import 'package:nagarro_cash_app/User_interface/Pages/intro_screen.dart';
import 'package:nagarro_cash_app/User_interface/Pages/loading_screen.dart';

var routes = <String,WidgetBuilder> {
  "/Home": (BuildContext context) => MyHomePage(),
  "/IntroPage": (BuildContext context) => IntroScreenPage(),
};
void main() => runApp(MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.lightGreenAccent, accentColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
      routes: routes,
    ));

