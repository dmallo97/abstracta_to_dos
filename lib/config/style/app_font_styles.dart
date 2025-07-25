import 'package:abstracta_to_dos/config/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFontStyles {
  static TextStyle get defaultStyle => const TextStyle().wrapWithFont();

  static TextStyle get getInputHintStyle =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeightType.regular.getFontWeight(),
        color: AppColors.boldPurple,
      ).wrapWithFont();

  static TextStyle get getInputStyle =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeightType.medium.getFontWeight(),
        color: AppColors.boldPurple,
        // color: const WidgetStateColor.fromMap({
        //   WidgetState.error: AppColors.red,
        //   WidgetState.any: AppColors.skyblue,
        // }),
      ).wrapWithFont();

  static TextStyle get getInputFloatingLabelStyle =>
      TextStyle(
        fontSize: 13,
        color: AppColors.boldPurple,
        fontWeight: FontWeightType.medium.getFontWeight(),
      ).wrapWithFont();

  static TextStyle get getDisabledButtonTextStyle => getButtonTextStyle.copyWith(color: AppColors.lightGrey);

  static TextStyle get getButtonTextStyle =>
      TextStyle(fontWeight: FontWeightType.medium.getFontWeight()).wrapWithFont();

  static TextStyle get getBodyTextStyle => const TextStyle().wrapWithFont();

  static TextStyle get getBadgeCounter =>
      TextStyle(fontSize: 11, fontWeight: FontWeightType.semiBold.getFontWeight(), color: Colors.white).wrapWithFont();

  static TextStyle get getShopAppBarTitle =>
      TextStyle(
        fontSize: 22,
        fontWeight: FontWeightType.bold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get getToDoCardTitle =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeightType.semiBold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get getToDoCardDescription =>
      TextStyle(
        fontSize: 13,
        fontWeight: FontWeightType.medium.getFontWeight(),
        color: AppColors.darkGrey,
      ).wrapWithFont();

  static TextStyle get getToDoCardOwner =>
      TextStyle(
        fontSize: 13,
        fontWeight: FontWeightType.medium.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get getToDoCardDueDate =>
      TextStyle(fontSize: 13, fontWeight: FontWeightType.bold.getFontWeight(), color: AppColors.red).wrapWithFont();

  static TextStyle get getTaskCardDueDate =>
      TextStyle(fontSize: 14, fontWeight: FontWeightType.regular.getFontWeight(), color: Colors.white).wrapWithFont();

  static TextStyle get getShopsSectionTitle =>
      TextStyle(
        fontSize: 20,
        fontWeight: FontWeightType.bold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get getSectionTitleAction =>
      TextStyle(
        fontSize: 14,
        fontWeight: FontWeightType.medium.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get getWorkerName =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeightType.medium.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get getShopAppBarSubtitle =>
      TextStyle(
        fontSize: 14,
        fontWeight: FontWeightType.medium.getFontWeight(),
        color: AppColors.darkGrey,
      ).wrapWithFont();

  static TextStyle get getTitleBold =>
      TextStyle(fontSize: 16, fontWeight: FontWeightType.bold.getFontWeight()).wrapWithFont();

  static TextStyle get getCategoryTitle =>
      TextStyle(fontSize: 24, fontWeight: FontWeightType.semiBold.getFontWeight()).wrapWithFont();

  static TextStyle get getHighlightedTitle =>
      TextStyle(fontSize: 20, fontWeight: FontWeightType.bold.getFontWeight()).wrapWithFont();

  static TextStyle get getNumberOfResultsSubtitle =>
      TextStyle(fontSize: 16, fontWeight: FontWeightType.semiBold.getFontWeight()).wrapWithFont();

  static TextStyle get ratingValue =>
      TextStyle(fontSize: 15, fontWeight: FontWeightType.semiBold.getFontWeight()).wrapWithFont();

  static TextStyle get shopPageName =>
      TextStyle(fontSize: 20, fontWeight: FontWeightType.bold.getFontWeight(), color: Colors.black).wrapWithFont();

  static TextStyle get shopPageDescription =>
      TextStyle(
        fontSize: 12,
        fontWeight: FontWeightType.regular.getFontWeight(),
        color: AppColors.darkGrey,
      ).wrapWithFont();

  static TextStyle get shopChildCategoryTitle =>
      TextStyle(fontSize: 16, fontWeight: FontWeightType.medium.getFontWeight(), color: Colors.black).wrapWithFont();

  static TextStyle get getBodyReg =>
      TextStyle(fontSize: 12, fontWeight: FontWeightType.regular.getFontWeight()).wrapWithFont();

  static TextStyle get getBodyMed =>
      TextStyle(fontSize: 12, fontWeight: FontWeightType.medium.getFontWeight()).wrapWithFont();

  static TextStyle get getBodySemiBold =>
      TextStyle(fontSize: 12, fontWeight: FontWeightType.semiBold.getFontWeight()).wrapWithFont();

  static TextStyle get getBodyBold => TextStyle(fontWeight: FontWeightType.bold.getFontWeight()).wrapWithFont();

  static TextStyle get homeCategoryCardLabel =>
      TextStyle(
        fontSize: 12,
        fontWeight: FontWeightType.semiBold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get searchFieldHintTextStyle =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeightType.regular.getFontWeight(),
        color: AppColors.darkGrey,
      ).wrapWithFont();

  static TextStyle get searchFieldLabelStyle =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeightType.medium.getFontWeight(),
        color: AppColors.darkGrey,
      ).wrapWithFont();

  static TextStyle get summaryTitle =>
      TextStyle(
        fontSize: 20,
        fontWeight: FontWeightType.extraBold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get appointmentCardShopTitle =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeightType.semiBold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get shopCardTitle =>
      TextStyle(
        fontSize: 20,
        fontWeight: FontWeightType.semiBold.getFontWeight(),
        color: AppColors.boldPurple,
      ).wrapWithFont();

  static TextStyle get shopCardDescription =>
      TextStyle(
        fontSize: 14,
        fontWeight: FontWeightType.regular.getFontWeight(),
        color: AppColors.darkGrey,
      ).wrapWithFont();

  static TextStyle get appointmentCardStatusLabel =>
      TextStyle(fontSize: 12, fontWeight: FontWeightType.bold.getFontWeight()).wrapWithFont();

  static TextStyle get appointmentCardShopTag =>
      TextStyle(
        fontSize: 12,
        fontWeight: FontWeightType.medium.getFontWeight(),
        color: AppColors.darkGrey,
      ).wrapWithFont();

  static TextStyle get shopServiceCardTitle =>
      TextStyle(fontSize: 16, fontWeight: FontWeightType.bold.getFontWeight(), color: Colors.black).wrapWithFont();

  static TextStyle get shopServiceCardDescription =>
      TextStyle(
        fontSize: 13,
        fontWeight: FontWeightType.medium.getFontWeight(),
        color: AppColors.darkGrey,
      ).wrapWithFont();

  static TextStyle get smallTextButtonStyle =>
      TextStyle(
        fontSize: 11,
        fontWeight: FontWeightType.bold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get discountTag =>
      TextStyle(
        fontSize: 10,
        fontWeight: FontWeightType.bold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get fullPriceDiscounted =>
      TextStyle(
        fontSize: 11,
        fontWeight: FontWeightType.semiBold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get currentPrice =>
      TextStyle(
        fontSize: 15,
        fontWeight: FontWeightType.bold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get signUpStepTitle =>
      TextStyle(color: AppColors.boldPurple, fontWeight: FontWeightType.bold.getFontWeight()).wrapWithFont();

  static TextStyle get signUpStepSubtitle =>
      TextStyle(color: AppColors.lightBlack, fontWeight: FontWeightType.regular.getFontWeight()).wrapWithFont();

  static TextStyle get bodyEnphasis => bodyRegular.copyWith(color: AppColors.lightBlack).wrapWithFont();

  static TextStyle get bodyRegular =>
      TextStyle(
        fontSize: 14,
        fontWeight: FontWeightType.regular.getFontWeight(),
        color: AppColors.darkGrey,
      ).wrapWithFont();

  static TextStyle get smallLetter => bodyRegular.copyWith(fontSize: 12).wrapWithFont();

  static TextStyle get sectionTitle =>
      TextStyle(
        color: AppColors.lightBlack,
        fontSize: 20,
        fontWeight: FontWeightType.semiBold.getFontWeight(),
      ).wrapWithFont();

  static TextStyle get cardTitle =>
      TextStyle(
        fontSize: 14,
        fontWeight: FontWeightType.bold.getFontWeight(),
        color: AppColors.lightBlack,
      ).wrapWithFont();

  static TextStyle get cardMessage =>
      TextStyle(
        fontSize: 13,
        fontWeight: FontWeightType.regular.getFontWeight(),
        color: AppColors.darkGrey,
      ).wrapWithFont();
}

extension on TextStyle {
  TextStyle wrapWithFont() => GoogleFonts.onest(textStyle: this);
}

enum FontWeightType {
  black,
  extraBold,
  bold,
  semiBold,
  medium,
  regular,
  light,
  ultraLight,
  thin;

  FontWeight getFontWeight() {
    switch (this) {
      case black:
        return FontWeight.w900;
      case extraBold:
        return FontWeight.w800;
      case bold:
        return FontWeight.w700;
      case semiBold:
        return FontWeight.w600;
      case medium:
        return FontWeight.w500;
      case regular:
        return FontWeight.w400;
      case light:
        return FontWeight.w300;
      case ultraLight:
        return FontWeight.w200;
      case thin:
        return FontWeight.w100;
    }
  }
}
