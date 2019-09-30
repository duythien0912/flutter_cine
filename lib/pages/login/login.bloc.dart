import 'dart:async';
import 'package:app_m/pages/login/login.events.dart';
import 'package:app_m/pages/login/login.state.dart';

class LoginPageBloc {
  //-- Properties
  LoginPageState _state = LoginPageState();

  //-- BLoC Properties
  final _stateController = StreamController<LoginPageState>();
  final _eventController = StreamController<LoginPageEvent>.broadcast();

  //-- BLoC Methods
  StreamSink<LoginPageState> get _stateSink => _stateController.sink;
  Stream<LoginPageState> get state => _stateController.stream;

  Sink<LoginPageEvent> get eventSink => _eventController.sink;

  //-- Singleton
  LoginPageBloc._privateConstructor() {
    this._eventController.stream.listen(processEvent);
  }

  static final LoginPageBloc instance = LoginPageBloc._privateConstructor();

  //-- Methods
  // Process Event
  void processEvent(LoginPageEvent event) {
    // Process you custom events defined in .events.dart
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
