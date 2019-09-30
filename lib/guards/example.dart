import 'package:flutter/widgets.dart';

class ExampleGuard {

  // Properties  

  // Functions 
  ExampleGuard._privateConstructor();

  static final ExampleGuard instance = ExampleGuard._privateConstructor();

  bool canActivate(BuildContext context) {
    return true;
  }

}
