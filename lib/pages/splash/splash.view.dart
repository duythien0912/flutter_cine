import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app_m/pages/splash/splash.bloc.dart';
import 'package:app_m/pages/splash/splash.events.dart';
import 'package:app_m/common/assets.dart' as ASSETS;
import 'package:app_m/common/colors.dart' as COLORS;
import 'dart:math';

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double sizePadding = [width, height].reduce(min) / 8;
    EdgeInsets paddingLogo = EdgeInsets.only(
      left: sizePadding,
      right: sizePadding,
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: COLORS.LINE_SUNSET,
        ),
        child: Stack(
          children: <Widget>[
            _buildCenterLogo(paddingLogo),
            _buildImageBackgroud(),
          ],
        ),
      ),
    );
  }

  Center _buildCenterLogo(EdgeInsets paddingLogo) {
    return Center(
      child: Padding(
        padding: paddingLogo,
        child: Image.asset(
          ASSETS.logo,
        ),
      ),
    );
  }

  Image _buildImageBackgroud() {
    return Image.asset(
      ASSETS.backgroud,
    );
  }
}
