import 'package:app_m/pages/home/home.view.dart';
import 'package:app_m/pages/login/login.view.dart';
import 'package:app_m/pages/splash/splash.view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> ROUTES = {
  '/': (context) => SplashPage(),
  '/home': (context) => HomePage(),
  '/login': (context) => LoginPage(),
};
