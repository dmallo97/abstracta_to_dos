import 'package:abstracta_to_dos/config/style/app_colors.dart';
import 'package:abstracta_to_dos/config/style/app_font_styles.dart';
import 'package:abstracta_to_dos/config/style/app_styles.dart';
import 'package:abstracta_to_dos/config/style/custom_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AbstractaLightTheme implements CustomTheme {
  @override
  ThemeExtension get customColorPalette => ThemeCustomColors(
    background: AppColors.lightBackground,
    foreground: AppColors.lightBlack,
    highlight: AppColors.highlight,
    onHighlight: AppColors.onHighlight,
    title: AppColors.lightBlack,
    body: AppColors.darkGrey,
  );

  @override
  ThemeData getTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.boldPurple,
        onPrimary: Colors.white,
        secondary: AppColors.lightPurple,
        onSecondary: AppColors.boldPurple,
        tertiary: AppColors.lightGrey,
        onTertiary: AppColors.darkGrey,
        surface: AppColors.lightBackground,
        onSurface: AppColors.lightBlack,
      ),
      extensions: [customColorPalette],
      inputDecorationTheme: AppStyles.inputDecorationTheme,
      filledButtonTheme: FilledButtonThemeData(style: AppStyles.filledButtonStyle),
      textTheme: TextTheme(
        bodyLarge: AppFontStyles.getInputStyle,
        titleMedium: AppFontStyles.getBodyTextStyle.copyWith(fontSize: 16),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          textStyle: AppFontStyles.getBodyTextStyle,
          actionTextStyle: AppFontStyles.getBodyTextStyle,
        ),
      ),
    );
  }
}

class AbstractaDarkTheme implements CustomTheme {
  @override
  ThemeExtension get customColorPalette => ThemeCustomColors(
    background: AppColors.darkBackground,
    foreground: AppColors.lightBlack,
    highlight: AppColors.highlight,
    onHighlight: AppColors.onHighlight,
    title: AppColors.lightBlack,
    body: AppColors.darkGrey,
  );

  @override
  ThemeData getTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: AppColors.boldPurple,
        onPrimary: AppColors.lightPurple,
        secondary: AppColors.lightPurple,
        onSecondary: AppColors.boldPurple,
        tertiary: AppColors.lightGrey,
        onTertiary: AppColors.darkGrey,
        surface: AppColors.darkBackground,
        onSurface: AppColors.lightGrey,
      ),
      extensions: [customColorPalette],
    );
  }
}
