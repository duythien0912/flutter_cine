import 'package:flutter/material.dart';
import 'package:app_m/common/routes.dart'; // ROUTES
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle.light.copyWith();
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app_m',
      initialRoute: '/',
      routes: ROUTES,
      theme: ThemeData(),
    );
  }
}
