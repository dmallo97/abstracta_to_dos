import 'package:flutter/material.dart';

class AppColors {
  static const lightBlack = Color(0xff1E1E1E);
  static const boldPurple = Color(0xff754BDE);
  static const lightPurple = Color.fromARGB(255, 183, 173, 211);
  static const lightGrey = Color(0xffD9D9D9);
  static const darkGrey = Color(0xff949393);
  static const highlight = Color(0xffB9EEFF);
  static const onHighlight = Color(0xff00C2FF);
  static const lightBackground = Colors.white;
  static const darkBackground = Color.fromARGB(255, 37, 28, 45);
  static const red = Color.fromARGB(255, 152, 34, 34);
  static const yellow = Color.fromARGB(255, 221, 155, 48);
}

class ThemeCustomColors extends ThemeExtension<ThemeCustomColors> {
  final Color title;
  final Color body;
  final Color background;
  final Color foreground;
  final Color highlight;
  final Color onHighlight;

  ThemeCustomColors({
    required this.background,
    required this.foreground,
    required this.highlight,
    required this.onHighlight,
    required this.title,
    required this.body,
  }) : super();

  @override
  ThemeExtension<ThemeCustomColors> copyWith({
    Color? title,
    Color? body,
    Color? background,
    Color? foreground,
    Color? highlight,
    Color? onHighlight,
  }) {
    return ThemeCustomColors(
      background: background ?? this.background,
      foreground: foreground ?? this.foreground,
      highlight: highlight ?? this.highlight,
      onHighlight: onHighlight ?? this.onHighlight,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  ThemeExtension<ThemeCustomColors> lerp(covariant ThemeExtension<ThemeCustomColors>? other, double t) {
    if (other is! ThemeCustomColors) {
      return this;
    }
    return ThemeCustomColors(
      background: Color.lerp(background, other.background, t) ?? background,
      foreground: Color.lerp(foreground, other.foreground, t) ?? foreground,
      highlight: Color.lerp(highlight, other.highlight, t) ?? highlight,
      onHighlight: Color.lerp(onHighlight, other.onHighlight, t) ?? onHighlight,
      title: Color.lerp(title, other.title, t) ?? title,
      body: Color.lerp(body, other.body, t) ?? body,
    );
  }
}
