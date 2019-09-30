import 'dart:async';
import 'package:app_m/pages/home/home.events.dart';
import 'package:app_m/pages/home/home.state.dart';

class HomePageBloc {

  //-- Properties
  HomePageState _state = HomePageState();

  //-- BLoC Properties
  final _stateController = StreamController<HomePageState>();
  final _eventController = StreamController<HomePageEvent>.broadcast();

  //-- BLoC Methods
  StreamSink<HomePageState> get _stateSink => _stateController.sink;
  Stream<HomePageState> get state => _stateController.stream;

  Sink<HomePageEvent> get eventSink => _eventController.sink;

  //-- Singleton
  HomePageBloc._privateConstructor() {
    this._eventController.stream.listen(processEvent);
  }

  static final HomePageBloc instance = HomePageBloc._privateConstructor();

  //-- Methods
  // Process Event
  void processEvent(HomePageEvent event) {
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
