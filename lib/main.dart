import 'package:flutter/material.dart';
import 'package:app_m/common/routes.dart'; // ROUTES

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app_m',
      initialRoute: '/',
      routes: ROUTES,
      theme: ThemeData(),
    );
  }
}
