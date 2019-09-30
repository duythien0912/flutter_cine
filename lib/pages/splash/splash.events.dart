import 'package:flutter/material.dart';

abstract class SplashPageEvent {}

class SPLASH_INIT_STATE extends SplashPageEvent {
  BuildContext context;
  SPLASH_INIT_STATE(this.context);
}
