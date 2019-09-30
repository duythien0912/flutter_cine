import 'dart:async';
import 'package:flutter/material.dart';
import 'package:app_m/pages/splash/splash.events.dart';
import 'package:app_m/pages/splash/splash.state.dart';

class SplashPageBloc {
  //-- Properties
  SplashPageState _state = SplashPageState();

  //-- BLoC Properties
  final _stateController = StreamController<SplashPageState>();
  final _eventController = StreamController<SplashPageEvent>.broadcast();

  //-- BLoC Methods
  StreamSink<SplashPageState> get _stateSink => _stateController.sink;
  Stream<SplashPageState> get state => _stateController.stream;

  Sink<SplashPageEvent> get eventSink => _eventController.sink;

  //-- Singleton
  SplashPageBloc._privateConstructor() {
    this._eventController.stream.listen(processEvent);
  }

  static final SplashPageBloc instance = SplashPageBloc._privateConstructor();

  //-- Methods
  // Process Event
  void processEvent(SplashPageEvent event) {
    if (event is SPLASH_INIT_STATE) {
      Future.delayed(Duration(seconds: 3)).then((test) {
        Navigator.pushNamed(event.context, '/home');
      });
    }
  }

  // Dispose
  void dispose() {
    this._stateController.close();
    this._eventController.close();
  }

  // add to stream in
  void updateState() {
    this._stateSink.add(this._state);
  }
}
