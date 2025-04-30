import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/splash.dart';

import 'login.dart';
import 'register.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red, primaryColor: Colors.redAccent),
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Splash(),
      '/login': (context) => Login(),
      '/register': (context) => Register(),
      '/home': (context) => Home(),
    },
  ));
}
