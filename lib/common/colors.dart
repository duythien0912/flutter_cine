import 'dart:ui';

import 'package:flutter/material.dart';

// Color Variables Here
// Ex.
const Color GREEN = Color.fromRGBO(0, 255, 0, 1);
const Color SUNSET = Color.fromRGBO(252, 84, 64, 1);

const Color SUNSET_TOP = Color.fromRGBO(252, 98, 68, 1);
const Color SUNSET_BOTTOM = Color.fromRGBO(252, 66, 66, 1);

const LinearGradient LINE_SUNSET = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [SUNSET_TOP, SUNSET_BOTTOM],
);

const LinearGradient LINE_SUNSET_LR = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [SUNSET_TOP, SUNSET_BOTTOM],
);
