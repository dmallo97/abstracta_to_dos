import 'package:abstracta_to_dos/config/style/app_colors.dart';
import 'package:abstracta_to_dos/config/style/app_font_styles.dart';
import 'package:abstracta_to_dos/config/style/custom_outlined_input_border.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static const double defaultRadius = 6;

  static final cardDecorationStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.03), spreadRadius: 5, blurRadius: 10)],
    color: Colors.white,
  );

  static final roundedInputBorder = CustomOutlinedInputBorder(borderRadius: BorderRadius.circular(defaultRadius));

  static InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
    labelStyle: WidgetStateTextStyle.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return AppFontStyles.getInputStyle.copyWith(
          color: AppColors.darkGrey,
          fontWeight: FontWeightType.regular.getFontWeight(),
        );
      }
      if (states.contains(WidgetState.error)) {
        return AppFontStyles.getInputStyle.copyWith(color: AppColors.red);
      }
      return AppFontStyles.getInputStyle;
    }),
    floatingLabelStyle: WidgetStateTextStyle.resolveWith((states) {
      if (states.contains(WidgetState.error)) {
        return AppFontStyles.getInputFloatingLabelStyle.copyWith(color: AppColors.red);
      }
      return AppFontStyles.getInputFloatingLabelStyle;
    }),
    // labelStyle: WidgetStateTextStyle.fromMap({
    //   WidgetState.disabled: AppFontStyles.getInputStyle.copyWith(
    //     color: AppColors.darkGrey,
    //     fontWeight: FontWeightType.regular.getFontWeight(),
    //   ),
    //   WidgetState.error: AppFontStyles.getInputStyle.copyWith(color: AppColors.red),
    //   WidgetState.any: AppFontStyles.getInputStyle,
    // }),
    // floatingLabelStyle: WidgetStateTextStyle.fromMap({
    //   WidgetState.error: AppFontStyles.getInputFloatingLabelStyle.copyWith(color: AppColors.red),
    //   WidgetState.any: AppFontStyles.getInputFloatingLabelStyle,
    // }),
    filled: true,
    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return AppColors.lightGrey;
      }
      if (states.contains(WidgetState.error)) {
        return Colors.transparent;
      }
      return AppColors.lightPurple.withValues(alpha: 0.2);
    }),
    // fillColor: const WidgetStateColor.resolveWith({
    //   // WidgetState.disabled: AppColors.backgroundDisabled,
    //   WidgetState.error: Colors.transparent,
    //   WidgetState.any: AppColors.lightPurple,
    // }),
    border: WidgetStateInputBorder.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return roundedInputBorder.copyWith(borderSide: const BorderSide(color: AppColors.darkGrey));
      }
      if (states.contains(WidgetState.error)) {
        return roundedInputBorder.copyWith(borderSide: const BorderSide(color: AppColors.red, width: 2));
      }
      if (states.contains(WidgetState.focused)) {
        return roundedInputBorder.copyWith(borderSide: const BorderSide(color: AppColors.boldPurple, width: 2));
      }
      return roundedInputBorder.copyWith(borderSide: BorderSide.none);
    }),
  );

  static ButtonStyle get filledButtonStyle => ButtonStyle(
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(defaultRadius))),
    splashFactory: InkRipple.splashFactory,
    alignment: Alignment.center,
    fixedSize: const WidgetStatePropertyAll(Size.fromHeight(50)),
    minimumSize: const WidgetStatePropertyAll(Size.fromWidth(30)),
    backgroundColor: WidgetStateColor.fromMap({
      WidgetState.disabled: AppColors.lightGrey,
      WidgetState.error: AppColors.red,
      WidgetState.hovered | WidgetState.scrolledUnder: Color.lerp(AppColors.boldPurple, AppColors.lightBlack, 0.2)!,
      WidgetState.any: AppColors.boldPurple,
    }),
    foregroundColor: WidgetStateProperty<Color?>.fromMap(<WidgetStatesConstraint, Color?>{
      WidgetState.disabled: AppColors.darkGrey,
      WidgetState.error: Color.lerp(AppColors.red, AppColors.lightBlack, 0.4)!,
      WidgetState.hovered | WidgetState.scrolledUnder: Color.lerp(AppColors.lightPurple, AppColors.lightBlack, 0.2)!,
      WidgetState.any: Colors.white,
    }),
    padding: const WidgetStatePropertyAll(EdgeInsets.all(4)),
    textStyle: WidgetStateTextStyle.fromMap({
      WidgetState.disabled: AppFontStyles.getDisabledButtonTextStyle,
      ~WidgetState.disabled: AppFontStyles.getButtonTextStyle,
    }),
    visualDensity: VisualDensity.compact,
  );
}
