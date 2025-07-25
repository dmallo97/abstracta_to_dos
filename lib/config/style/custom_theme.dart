import 'package:flutter/material.dart';

abstract class CustomTheme {
  ThemeData getTheme();
  ThemeExtension get customColorPalette;
}
