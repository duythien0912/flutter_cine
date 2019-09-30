import 'dart:async';
import 'package:app_m/components/example/example.events.dart';
import 'package:app_m/components/example/example.state.dart';

class ExampleComponentBloc {

  //-- Properties
  ExampleComponentState _state = ExampleComponentState();

  //-- BLoC Properties
  final _stateController = StreamController<ExampleComponentState>();
  final _eventController = StreamController<ExampleComponentEvent>.broadcast();

  //-- BLoC Methods
  StreamSink<ExampleComponentState> get _stateSink => _stateController.sink;
  Stream<ExampleComponentState> get state => _stateController.stream;

  Sink<ExampleComponentEvent> get eventSink => _eventController.sink;

  //-- Singleton
  ExampleComponentBloc._privateConstructor() {
    this._eventController.stream.listen(processEvent);
  }

  static final ExampleComponentBloc instance = ExampleComponentBloc._privateConstructor();

  //-- Methods
  // Process Event
  void processEvent(ExampleComponentEvent event) {
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
