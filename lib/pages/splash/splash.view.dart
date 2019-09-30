import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app_m/pages/splash/splash.bloc.dart';
import 'package:app_m/pages/splash/splash.events.dart';
import 'package:app_m/common/assets.dart' as ASSETS;

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashPageBloc _bloc = SplashPageBloc.instance;

  @override
  void initState() {
    this._bloc.eventSink.add(SPLASH_INIT_STATE(context));
    super.initState();
  }

  @override
  void dispose() {
    this._bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          ASSETS.logo,
          height: 150.0,
          width: 150.0,
        ),
      ),
    ));
  }
}
