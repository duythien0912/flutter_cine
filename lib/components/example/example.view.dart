import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app_m/components/example/example.bloc.dart';

class ExampleComponent extends StatefulWidget {
  ExampleComponent({Key key}) : super(key: key);

  _ExampleComponentState createState() => _ExampleComponentState();
}
class _ExampleComponentState extends State<ExampleComponent> {

  ExampleComponentBloc _bloc = ExampleComponentBloc.instance;

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
          child: Text('ExampleComponent'),
        ),
      )
    );
  }
}