import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app_m/pages/login/login.bloc.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginPageBloc _bloc = LoginPageBloc.instance;

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
        child: Text('LoginPage'),
      ),
    ));
  }
}
