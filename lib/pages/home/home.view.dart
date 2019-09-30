import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app_m/pages/home/home.bloc.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  HomePageBloc _bloc = HomePageBloc.instance;

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
          child: Text('HomePage'),
        ),
      )
    );
  }
}